//import cytoscape from 'https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js';
import { API_DATA } from "../env.js";
import { API_ENDPOINT, IMAGES_ENDPOINT } from "../consts.js";
import { loadPersonByName, loadRandomPerson } from "../utils.js";

const template = document.createElement("template");
template.innerHTML = `
<style>
  @import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
</style>
<style>
  .fixed-card {
    display: inline-block !important;
    width: 20%;
    height: 50%;
  }
  textarea {
    width:50%;
  }
</style>
<div class="mt-5 mb-5" style="width:100%; text-align:center">
    <button class="has-background-info p-5  button is-outlined" id="new-game">
        New game
    </button>
</div>
<div class="app-head" style="width:100%; text-align:center">
    <div class="card fixed-card mr-5">
        <button class="ml-5" id="change-source">&#8635;</button>
        <textarea class="ml-1" id="text-source"></textarea>
        <button id="search-source">&#128270;</button>
        <mdbc-card id="source-card"></mdbc-card>
    </div>
    <div class="card fixed-card">
        <mdbc-card id="current-card"></mdbc-card>
    </div>
    <div class="card fixed-card ml-5">
        <button class="ml-5" id="change-target">&#8635;</button>
        <textarea class="ml-1" id="text-target"></textarea>
        <button id="search-target">&#128270;</button>
        <mdbc-card id="target-card"></mdbc-card>
    </div>
</div>
`;

function dispatch(element, eventName, detail) {
  element.dispatchEvent(
    new CustomEvent(eventName, {
      composed: true,
      bubbles: true,
      detail: detail,
    })
  );
}

class MDBCGameState extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.sourceCard = this.shadowRoot.querySelector("#source-card");
    this.currentCard = this.shadowRoot.querySelector("#current-card");
    this.targetCard = this.shadowRoot.querySelector("#target-card");
    this.sourceObj = { name: null, img_path: null };
    this.targetObj = { name: null, img_path: null };
    this.currentObj = { name: null, img_path: null };
    this.randomizeSource = this.shadowRoot.querySelector("#change-source");
    this.randomizeTarget = this.shadowRoot.querySelector("#change-target");
    this.selectSource = this.shadowRoot.querySelector("#search-source");
    this.selectTarget = this.shadowRoot.querySelector("#search-target");
    this.sourceText = this.shadowRoot.querySelector("#text-source");
    this.targetText = this.shadowRoot.querySelector("#text-target");
    this.newGame = this.shadowRoot.querySelector("#new-game");
    this.attachCallbacks = this.attachCallbacks.bind(this);
    this.attachCallbacks();
    this.render();
  }

  attachCallbacks() {
    this.randomizeSource.onclick = dispatch(this, "selectedRandomSource");
    this.randomizeTarget.onclick = dispatch(this, "selectedRandomTarget");
    this.selectSource.onclick = dispatch(
      this,
      "selectedSource",
      this.sourceText.value
    );
    this.selectTarget.onclick = dispatch(
      this,
      "selectedSource",
      this.targetText.value
    );
    this.newGame.onclick = dispatch(this, "selectedNewGame");
  }

  disconnectedCallback() {
    [
      this.randomizeSource,
      this.randomizeTarget,
      this.selectSource,
      this.selectTarget,
      this.newGame,
    ].forEach((bt) => (bt.onclick = null));
  }

  attributeChangedCallback(name, oldVal, newVal) {
    if (oldVal === newVal) return;
    console.log("rodou");
    switch (name) {
      case "data-source":
        [this.sourceObj.name, this.sourceObj.img_path] = newVal.split(";");
        this.renderSource();
        break;
      case "data-current":
        [this.currentObj.name, this.currentObj.img_path] = newVal.split(";");
        this.renderCurrent();
        break;
      case "data-target":
        [this.targetObj.name, this.targetObj.img_path] = newVal.split(";");
        this.renderTarget();
        break;
      default:
        break;
    }
  }

  static get observedAttributes() {
    return ["data-source", "data-current", "data-target"];
  }

  renderSource() {
    this.sourceCard.dataset.label = `Start: ${this.sourceObj.name}`;
    this.sourceCard.dataset.alt = `Photo of ${this.sourceObj.name}`;
    this.sourceCard.dataset.source = `${IMAGES_ENDPOINT}${this.sourceObj.img_path}`;
  }

  renderCurrent() {
    this.currentCard.dataset.label = `Current: ${this.currentObj.name}`;
    this.currentCard.dataset.alt = `Photo of ${this.currentObj.name}`;
    this.currentCard.dataset.source = `${IMAGES_ENDPOINT}${this.currentObj.img_path}`;
  }

  renderTarget() {
    this.targetCard.dataset.label = `Target: ${this.targetObj.name}`;
    this.targetCard.dataset.alt = `Photo of ${this.targetObj.name}`;
    this.targetCard.dataset.source = `${IMAGES_ENDPOINT}${this.targetObj.img_path}`;
  }

  render() {
    if (!this.sourceObj || !this.currentObj || !this.targetObj) return;
    this.renderSource();
    this.renderCurrent();
    this.renderTarget();
  }
}

export { MDBCGameState };
