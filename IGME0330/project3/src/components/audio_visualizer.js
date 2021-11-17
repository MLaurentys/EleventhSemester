const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style> </style>
<canvas style="width:100%"></canvas>
`;
class AudioVisualizer extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.ctx = this.canvas.getContext("2d");
    this.renderHistogram = this.renderHistogram.bind(this);
    this.freqs = [];
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback(name, _, newVal) {
    if (name === "data-frequency") {
      this.freqs = JSON.parse(newVal);
    }
    this.render();
  }

  static get observedAttributes() {
    return ["data-frequency"];
  }

  renderHistogram() {
    this.ctx.moveTo(0, 0);
    this.ctx.fillStyle = "beige";
    this.ctx.fillRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.ctx.fillStyle = "red";
    for (let b of this.freqs) {
      let percent = b / 255;
      let a = this.ctx.canvas.height * percent;
      console.log(a);
      this.ctx.fillRect(0, 0, 4, 10);
      this.ctx.translate(1, 0);
      if (b != 0) {
        this.renderHistogram = () => {};
        this.ctx.moveTo(0, 0);
        this.ctx.fillStyle = "beige";
        this.ctx.fillRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
        break;
      }
    }
  }

  render() {
    this.renderHistogram();
  }
}

export { AudioVisualizer };
