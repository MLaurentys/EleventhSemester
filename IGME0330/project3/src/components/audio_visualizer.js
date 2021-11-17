const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style> </style>
<canvas width="100%"></canvas>
`;
class AudioVisualizer extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.ctx = this.canvas.getContext("2d");
    this.createHistogram();
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  createHistogram(values) {
    this.ctx.fillStyle = "beige";
    this.ctx.fillRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.ctx.fillStyle = "red";
    this.ctx.fillRect(
      0,
      0,
      this.ctx.canvas.width / 2,
      this.ctx.canvas.height / 2
    );
  }

  attributeChangedCallback(name, _, newVal) {
    if (name === "frequency") {
    }
    this.render();
  }

  static get observedAttribute() {
    return ["data-frequency"];
  }

  render() {}
}

export { AudioVisualizer };
