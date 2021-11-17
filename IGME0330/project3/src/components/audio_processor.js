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
    this.dataBuffer = new Uint8Array(this.analyserNode.frequencyBinCount);
    // this.audio.onplay = (e) => {
    //   if (audioCtx.state == 'suspended') {
    //     audioCtx.resume();
    //   }
    // };
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
