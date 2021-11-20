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
<style>
.threshold-indicator {
  position:absolute;
  border:2px solid red;
}
#volume-indicator {
  width:100%;
  bottom:50%;
}
#low-indicator {
  width:0;
  height:100%;
  bottom:0%;
  left:43.75%;
}
#high-indicator {
  width:0;
  height:100%;
  bottom:0%;
  left:56.25%;
}
.slider-hist {
  z-index:1;
  position:absolute;
}
#sliderVolume {
  width:0;
  left:0;
  height:100%;
  margin:0;
}
#sliderLow {
  bottom:0;
  left:0;
  height:0;
  min-height:0;
  width:43.75%;
  margin:0;
}
#sliderHigh {
  bottom:0;
  left:56.25%;
  height:0;
  min-height:0;
  width:45%;
  margin:0;
}
</style>
<div style="height:30vh;width:50%;position:relative;margin-left:3%;">
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
    this.visualizer.dataset.frequency = this.dataset.frequency;
  }
}

export { AudioController };
