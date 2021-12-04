import {
  HISTO_STEP,
  OFFSET,
  FFT_SIZE,
  NUM_BARS,
  BARS_TO_SKIP,
  binFreqRange,
} from "../consts.js";

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
    this.audioLoop = this.audioLoop.bind(this);
    this.processCommand = this.processCommand.bind(this);
    this.startMicrophone = this.startMicrophone.bind(this);
    this.startAudioProcessing = this.startAudioProcessing.bind(this);
    this.startMicrophone();
  }

  async startMicrophone() {
    try {
      this.audioStream = await navigator.mediaDevices.getUserMedia({
        audio: true,
        video: false,
      });
    } catch (err) {
      console.log("app needs microphone permission: " + err);
      return;
    }
    this.startAudioProcessing();
  }

  startAudioProcessing() {
    window.AudioContext = window.AudioContext || window.webkitAudioContext;
    this.ctx = new AudioContext();
    console.log(this.audioStream);
    this.sourceNode = this.ctx.createMediaStreamSource(this.audioStream);
    this.analyserNode = this.ctx.createAnalyser();
    this.analyserNode.fftSize = FFT_SIZE;
    this.sourceNode.connect(this.analyserNode);
    this.analyserNode.connect(this.ctx.destination);
    console.log(this.ctx.sampleRate);
    this.data = new Uint8Array(this.analyserNode.frequencyBinCount);
    this.commandDelay = 0;
    this.audioLoop();
  }

  processCommand() {
    let amtLow = 0;
    let amtMed = 0;
    let amtHigh = 0;
    let vol = +(this.dataset.volume / 100) * 256;
    let low =
      Math.round((+this.dataset.low + OFFSET) / HISTO_STEP) + BARS_TO_SKIP;
    let high =
      Math.round((+this.dataset.high + OFFSET) / HISTO_STEP) + BARS_TO_SKIP;
    for (let i = BARS_TO_SKIP; i < low; ++i)
      amtLow += Math.max(this.data[i] - vol, 0);
    for (let i = low; i < high; ++i) amtMed += Math.max(this.data[i] - vol, 0);
    for (let i = high; i < NUM_BARS + BARS_TO_SKIP; ++i)
      amtHigh += Math.max(this.data[i] - vol, 0);
    // console.log(`LOW: [${BARS_TO_SKIP * binFreqRange}, ${binFreqRange * low}]`);
    // console.log(`AVG: [${binFreqRange * low}, ${binFreqRange * high}]`);
    // console.log(
    //   `HIGH: [${binFreqRange * high}, ${
    //     binFreqRange * (NUM_BARS + BARS_TO_SKIP)
    //   }]`
    // );
    let candidate = ["low", amtLow];
    if (amtMed > candidate[1]) candidate = ["avg", amtMed];
    if (amtHigh > candidate[1]) candidate = ["high", amtHigh];
    //prevent some noise
    if (candidate[1] > 50) {
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
        detail: this.data.slice(BARS_TO_SKIP, BARS_TO_SKIP + NUM_BARS),
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
