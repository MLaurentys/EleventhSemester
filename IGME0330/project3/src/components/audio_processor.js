import { HISTO_STEP } from "../consts.js";

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
    this.audio.volume = 0.5;
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
    this.processCommand = this.processCommand.bind(this);
    this.commandDelay = 0;
    this.audioLoop();
  }

  processCommand() {
    let amtLow = 0;
    let amtMed = 0;
    let amtHigh = 0;
    let vol = +(this.dataset.volume / 100) * 256;
    let low = +this.dataset.low / HISTO_STEP;
    let high = +this.dataset.high / HISTO_STEP;
    for (let i = 0; i < low; ++i) amtLow += Math.max(this.data[i] - vol, 0);
    for (let i = low; i < high; ++i) amtMed += Math.max(this.data[i] - vol, 0);
    for (let i = high; i < this.data.length; ++i)
      amtHigh += Math.max(this.data[i] - vol, 0);
    let candidate = ["low", amtLow];
    if (amtMed > candidate[1]) candidate = ["avg", amtMed];
    if (amtHigh > candidate[1]) candidate = ["high", amtHigh];
    if (candidate[1] > 100) {
      this.dispatchEvent(
        new CustomEvent("newCommand", {
          composed: true,
          bubble: true,
          detail: candidate[0],
        })
      );
      this.commandDelay = 500;
    } else {
      this.dispatchEvent(
        new CustomEvent("newCommand", {
          composed: true,
          bubble: true,
          detail: "",
        })
      );
      this.commandDelay = 500;
    }
  }

  audioLoop() {
    setTimeout(this.audioLoop, 1000 / 12);
    this.commandDelay = Math.max(0, this.commandDelay - 1000 / 12);
    this.analyserNode.getByteFrequencyData(this.data);
    if (this.commandDelay === 0) this.processCommand();
    this.dispatchEvent(
      new CustomEvent("audioUpdated", {
        composed: true,
        bubble: true,
        detail: this.data,
      })
    );
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {}

  static get observedAttribute() {
    return ["data-volume", "data-low", "data-high"];
  }

  render() {}
}

export { AudioProcessor };
