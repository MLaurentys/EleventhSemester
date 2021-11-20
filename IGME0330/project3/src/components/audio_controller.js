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
<auae-audio-processor></auae-audio-processor>
<div style="height:30vh;width:100%;position:relative;margin-left:3%;">
    <input id="sliderVolume" orient="vertical" class="slider slider-hist is-fullwidth"
          min="0" max="100" value="50" step="1" type="range">
    <input id="sliderLow" class="slider slider-hist is-fullwidth"
          min="0" max="43.75" value="43.75" step="6.25" type="range">
    <input id="sliderHigh" class="slider slider-hist is-fullwidth"
        min="56.25" max="100" value="56.25" step="6.25" type="range">
    <div class="threshold-indicator" id="volume-indicator"></div>
    <div class="threshold-indicator" id="low-indicator"></div>
    <div class="threshold-indicator" id="high-indicator"></div>
    <auae-audio-visualizer data-volue="50";
    style="width:100%;height:100%;display:inline-block" id="visualizer">
    </auae-audio-visualizer>
    <ui5-range-slider end-value="20" style="margin-top:10%"></ui5-range-slider>
    <p> No input </p>
</div>
`;
class AudioController extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.visualizer = this.shadowRoot.querySelector("#visualizer");
    this.volumeSlider = this.shadowRoot.querySelector("#sliderVolume");
    this.lowSlider = this.shadowRoot.querySelector("#sliderLow");
    this.highSlider = this.shadowRoot.querySelector("#sliderHigh");
    this.volumeSlider = this.shadowRoot.querySelector("#sliderVolume");
    this.volumeIndicator = this.shadowRoot.querySelector("#volume-indicator");
    this.lowIndicator = this.shadowRoot.querySelector("#low-indicator");
    this.highIndicator = this.shadowRoot.querySelector("#high-indicator");
    this.command = this.shadowRoot.querySelector("p");
    this.volume = this.volumeSlider.value;
    this.low = this.lowSlider.value;
    this.high = this.highSlider.value;
    this.connectEventHandlers = this.connectEventHandlers.bind(this);
    this.connectEventHandlers();
  }

  connectEventHandlers() {
    this.volumeSlider.oninput = () => {
      this.volumeIndicator.style.bottom = `${this.volumeSlider.value}%`;
      this.visualizer.dataset.volume = this.volume;
      this.volume = this.volumeSlider.value;
    };
    this.lowSlider.oninput = () => {
      this.lowIndicator.style.left = `${this.lowSlider.value}%`;
      this.low = this.lowSlider.value;
    };
    this.highSlider.oninput = () => {
      this.highIndicator.style.left = `${this.highSlider.value}%`;
      this.high = this.highSlider.value;
    };
    this.addEventListener(
      "audioUpdated",
      ({ detail }) => (this.visualizer.dataset.frequency = detail)
    );
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

  render() {
    this.command.textContent = this.dataset.input ?? "No command";
  }
}

export { AudioController };
