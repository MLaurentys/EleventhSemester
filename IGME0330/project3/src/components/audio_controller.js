const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<link
  rel="stylesheet"
  href="https://people.rit.edu/mtl9706/330/project3/lib/css/bulma-slider.min.css"
/>
<input id="sliderVolume" class="slider is-fullwidth" min="0" max="100" value="50" step="1" type="range">
<auae-audio-visualizer id="visualizer"></auae-audio-visualizer>
`;
class AudioController extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.visualizer = this.shadowRoot.querySelector('#visualizer');
    this.slider = this.shadowRoot.querySelector('#sliderVolume');
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttributes() {
    return ['data-frequency'];
  }

  render() {
    this.visualizer.dataset.frequency = this.dataset.frequency;
  }
}

export { AudioController };
