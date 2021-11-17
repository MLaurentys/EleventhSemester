import { bulmaSlider } from "../../public/lib/bulma-slider";

const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<link
  rel="stylesheet"
  href="../../lib/css/bulma-slider.min.css"
/>
<script src="./../../lib/bulma-slider.js"></script>
<style> </style>
<input id="sliderWithValue" class="slider has-output is-fullwidth" min="0" max="100" value="50" step="1" type="range">
<output for="sliderWithValue">50</output>
<auae-audio-visualizer id="visualizer"></auae-audio-visualizer>
`;
class AudioController extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.visualizer = this.shadowRoot.querySelector("#visualizer");
    bulmaSlider.attach();
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttributes() {
    return ["data-frequency"];
  }

  render() {
    //this.visualizer.dataset.frequency = this.dataset.frequency;
  }
}

export { AudioController };
