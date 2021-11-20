const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style> </style>
<canvas style="width:100%; height:100%"></canvas>
`;
class AudioVisualizer extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.canvas = this.shadowRoot.querySelector('canvas');
    this.ctx = this.canvas.getContext('2d');
    this.renderHistogram = this.renderHistogram.bind(this);
    // There are 16 buckets for frequencies
    this.bucketSize = (this.ctx.canvas.width / 16) * 0.8;
    this.paddingSize = (this.ctx.canvas.width / 16) * 0.2;
    this.freqs = [];
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback(name, _, newVal) {
    if (name === 'data-frequency') {
      this.freqs = JSON.parse(newVal);
    }
    this.render();
  }

  static get observedAttributes() {
    return ['data-frequency'];
  }

  renderHistogram() {
    this.ctx.save();
    this.ctx.fillStyle = 'beige';
    this.ctx.fillRect(
      0,
      0,
      this.ctx.canvas.width * (5 / 16),
      this.ctx.canvas.height
    );
    this.ctx.fillStyle = 'green';
    this.ctx.fillRect(
      this.ctx.canvas.width * (5 / 16),
      0,
      this.ctx.canvas.width * this.ctx.canvas.width * (6 / 16),
      this.ctx.canvas.height
    );
    this.ctx.fillStyle = 'blue';
    this.ctx.fillRect(
      this.ctx.canvas.width * (11 / 16),
      0,
      this.ctx.canvas.width * (5 / 16),
      this.ctx.canvas.height
    );
    this.ctx.fillStyle = 'red';
    for (let b of this.freqs) {
      let percent = b / 255;
      let a = this.ctx.canvas.height * percent;
      this.ctx.fillRect(0, this.ctx.canvas.height, this.bucketSize, -a);
      this.ctx.translate(this.bucketSize + this.paddingSize, 0);
    }
    this.ctx.restore();
  }

  render() {
    this.renderHistogram();
  }
}

export { AudioVisualizer };
