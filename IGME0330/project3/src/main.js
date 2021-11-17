import { Header } from "./components/header.js";
import { App } from "./components/app.js";
import { Footer } from "./components/footer.js";
import { AudioVisualizer } from "./components/audio_visualizer.js";
import { AudioProcessor } from "./components/audio_processor.js";
import { AudioController } from "./components/audio_controller.js";

const init = () => {
  const url = "data/all.json";
  customElements.define("auae-header", Header);
  customElements.define("auae-app", App);
  customElements.define("auae-footer", Footer);
  customElements.define("auae-audio-visualizer", AudioVisualizer);
  customElements.define("auae-audio-processor", AudioProcessor);
  customElements.define("auae-audio-controller", AudioController);
};

window.onload = init;
