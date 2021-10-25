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
    this.startObj = null;
    this.targetObj = null;
    this.selectedObj = null;
    this.currentPath = [];
    this.browsing = "movies";
    this.page = 0;
    this.loadAsync = this.loadAsync.bind(this);
    this.attachCallbacks = this.attachCallbacks.bind(this);
    this.attachCallbacks();
    this.loadAsync();
  }

  attachCallbacks() {
    this.shadowRoot.querySelector("#change-source").onclick = dispatch(
      this,
      "selectedRandomSource",
      this.shadowRoot.querySelector("#text-source").value
    );
    this.shadowRoot.querySelector("#change-target").onclick = dispatch(
      this,
      "selectedRandomTarget"
    );
    this.shadowRoot.querySelector("#search-source").onclick = dispatch(
      this,
      "selectedSource",
      this.parsedData[detail].id
    );
    this.shadowRoot.querySelector("#search-target").onclick = dispatch(
      this,
      "selectedSource",
      this.shadowRoot.querySelector("#text-target").value
    );
    this.shadowRoot.querySelector("#new-game").onclick = () => {
      dispatch(this, "selectedNewGame");
    };
  }

  async loadAsync() {
    this.targetObj = await loadRandomPerson();
    this.startObj = await loadRandomPerson();
    this.selectedObj = this.startObj;
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback(name) {
    switch (name) {
      case "source":
        this.sourceObj = {};
        break;

      default:
        break;
    }
    this.render();
  }

  static get observedAttributes() {
    return ["source", "current", "target"];
  }

  renderSource() {
    this.sourceCard.dataset.label = `Start: ${this.startObj.name}`;
    this.sourceCard.dataset.alt = `Photo of ${this.startObj.name}`;
    this.sourceCard.dataset.source = `${IMAGES_ENDPOINT}${this.startObj.img_path}`;
  }

  renderCurrent() {
    this.currentCard.dataset.label = `Current: ${this.selectedObj.name}`;
    this.currentCard.dataset.alt = `Photo of ${this.selectedObj.name}`;
    this.currentCard.dataset.source = `${IMAGES_ENDPOINT}${this.selectedObj.img_path}`;
  }

  renderTarget() {
    this.targetCard.dataset.label = `Target: ${this.targetObj.name}`;
    this.targetCard.dataset.alt = `Photo of ${this.targetObj.name}`;
    this.targetCard.dataset.source = `${IMAGES_ENDPOINT}${this.targetObj.img_path}`;
  }

  render() {
    //note it alternates Person -> Movie -> Person
    if (
      this.currentPath.length === 0 ||
      this.currentPath.slice(-1)[0] !== this.selectedObj.id
    ) {
      this.currentPath.push(this.selectedObj.id);
    }
    if (!this.startObj || !this.selectedObj || !this.targetObj) return;
    this.renderSource();
    this.renderCurrent();
    this.renderTarget();
  }
}

export { MDBCGameState };
