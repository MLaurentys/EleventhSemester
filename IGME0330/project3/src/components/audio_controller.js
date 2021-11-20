import {
  START_LOW,
  START_HIGH,
  START_VOLUME,
  HISTO_STEP,
  LOW_START_POS,
  HIGH_START_POS,
} from "../consts.js";

const commands = {
  low: "E",
  avg: "A",
  high: "U",
  "": "No command",
};
const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<link
  rel="stylesheet"
  href="https://people.rit.edu/mtl9706/330/project3/lib/css/bulma-slider.min.css"
/>
<link rel="stylesheet" href="../styles/audio-controller.css" />
<auae-audio-processor data-low="${LOW_START_POS}" data-high="${HIGH_START_POS}"
  data-volume="${START_VOLUME}"id="processor"></auae-audio-processor>
<div style="height:30vh;width:100%;position:relative;margin-left:3%;">
    <input id="sliderVolume" orient="vertical" class="slider slider-hist is-fullwidth"
          min="0" max="100" value="${START_VOLUME}" step="1" type="range">
    <input id="sliderLow" class="slider slider-hist is-fullwidth"
          min="0" max="43.75" value="${LOW_START_POS}" step="${HISTO_STEP}" type="range">
    <input id="sliderHigh" class="slider slider-hist is-fullwidth"
        min="56.25" max="100" value="${HIGH_START_POS}" step="${HISTO_STEP}" type="range">
    <div class="threshold-indicator" id="volume-indicator"></div>
    <div class="threshold-indicator" id="low-indicator"></div>
    <div class="threshold-indicator" id="high-indicator"></div>
    <auae-audio-visualizer data-volue="50";
    style="width:100%;height:100%;display:inline-block" id="visualizer">
    </auae-audio-visualizer>
    <p></p>
</div>
`;
class AudioController extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.visualizer = this.shadowRoot.querySelector("#visualizer");
    this.processor = this.shadowRoot.querySelector("#processor");
    this.volumeSlider = this.shadowRoot.querySelector("#sliderVolume");
    this.lowSlider = this.shadowRoot.querySelector("#sliderLow");
    this.highSlider = this.shadowRoot.querySelector("#sliderHigh");
    this.volumeSlider = this.shadowRoot.querySelector("#sliderVolume");
    this.volumeIndicator = this.shadowRoot.querySelector("#volume-indicator");
    this.lowIndicator = this.shadowRoot.querySelector("#low-indicator");
    this.highIndicator = this.shadowRoot.querySelector("#high-indicator");
    this.command = this.shadowRoot.querySelector("p");
    this.connectEventHandlers = this.connectEventHandlers.bind(this);
    this.connectEventHandlers();
  }

  connectEventHandlers() {
    this.volumeSlider.oninput = () => {
      this.volumeIndicator.style.bottom = `${this.volumeSlider.value}%`;
      this.visualizer.dataset.volume = this.volumeSlider.value;
      this.processor.dataset.volume = this.volumeSlider.value;
    };
    this.lowSlider.oninput = () => {
      this.lowIndicator.style.left = `${this.lowSlider.value}%`;
      this.processor.dataset.low = this.lowSlider.value;
    };
    this.highSlider.oninput = () => {
      this.highIndicator.style.left = `${this.highSlider.value}%`;
      this.processor.dataset.high = this.highSlider.value;
    };
    this.addEventListener("audioUpdated", ({ detail }) => {
      this.visualizer.dataset.frequency = JSON.stringify(Array.from(detail));
    });
    this.addEventListener("newCommand", ({ detail }) => {
      this.command.textContent = commands[detail];
    });
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttributes() {
    return [];
  }

  render() {}
}

export { AudioController };
