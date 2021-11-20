const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
</style>
<audio controls src="sounds/obama-oilspill.mp3"></audio>
`;
class AudioProcessor extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.audio = this.shadowRoot.querySelector("audio");
    this.ctx = new (window.AudioContext || window.webkitAudioContext)();
    this.sourceNode = this.ctx.createMediaElementSource(this.audio);
    this.biquadFilter = this.ctx.createBiquadFilter();
    this.biquadFilter.type = "highshelf";
    this.biquadFilter.frequency.setValueAtTime(1000, this.ctx.currentTime);
    this.biquadFilter.gain.setValueAtTime(25, this.ctx.currentTime);
    this.analyserNode = this.ctx.createAnalyser();
    this.analyserNode.fftSize = 32;
    this.sourceNode.connect(this.biquadFilter);
    this.biquadFilter.connect(this.analyserNode);
    this.analyserNode.connect(this.ctx.destination);
    this.data = new Uint8Array(this.analyserNode.frequencyBinCount);
    this.audioLoop = this.audioLoop.bind(this);
    this.audioLoop();
  }

  audioLoop() {
    setTimeout(this.audioLoop, 1000 / 12);
    this.analyserNode.getByteFrequencyData(this.data);
    this.dispatchEvent(
      new CustomEvent("audioUpdated", {
        composed: true,
        bubble: true,
        detail: JSON.stringify(Array.from(this.data)),
      })
    );
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttribute() {}

  render() {}
}

export { AudioProcessor };
