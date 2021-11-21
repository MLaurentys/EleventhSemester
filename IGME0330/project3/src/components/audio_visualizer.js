import { NUM_BARS, BIN_FACTOR, PAD_FACTOR } from "../consts.js";
const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style> </style>
<canvas style="width:100%; height:100%"></canvas>
`;

const bgColors = [
  ["#949494", "#aeaeae"],
  ["#adc3d1", "#eeecf1"],
  ["#759cc9", "#8fb1cc"],
];

class AudioVisualizer extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.ctx = this.canvas.getContext("2d");
    this.renderHistogram = this.renderHistogram.bind(this);
    // There are 16 buckets for frequencies
    this.bucketSize = (this.ctx.canvas.width / NUM_BARS) * BIN_FACTOR;
    this.paddingSize = (this.ctx.canvas.width / NUM_BARS) * PAD_FACTOR;
    this.volHeigh = (1 / 2) * this.ctx.canvas.height;
    this.freqs = [];
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback(name, _, newVal) {
    if (name === "data-frequency") {
      this.freqs = JSON.parse(newVal);
    } else if (name === "data-volume") {
      this.volHeigh = ((+newVal + 1) / 100) * this.ctx.canvas.height;
    }
    this.render();
  }

  static get observedAttributes() {
    return ["data-frequency", "data-volume", "data-low", "data-high"];
  }

  renderHistBG(cols) {}

  renderHistogram() {
    this.ctx.save();
    this.ctx.fillStyle = "beige";
    this.ctx.fillRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.ctx.fillStyle = "red";
    for (let b of this.freqs) {
      let percent = b / 255;
      let a = this.ctx.canvas.height * percent;
      this.ctx.fillRect(0, this.ctx.canvas.height, this.bucketSize, -a);
      this.ctx.translate(this.bucketSize + this.paddingSize, 0);
    }
    this.ctx.translate(-NUM_BARS * (this.bucketSize + this.paddingSize), 0);
    this.ctx.fillStyle = "rgba(0,0,0,0.8)";
    this.ctx.fillRect(
      0,
      this.ctx.canvas.height,
      this.ctx.canvas.width,
      -this.volHeigh
    );
    this.ctx.restore();
  }

  render() {
    this.renderHistogram();
  }
}

export { AudioVisualizer };
