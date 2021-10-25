//import cytoscape from 'https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js';
import { API_DATA } from "../env.js";
import { API_ENDPOINT, IMAGES_ENDPOINT } from "../consts.js";
import {
  loadMovieById,
  loadPeopleOptions,
  loadMovieOptions,
  loadPersonByName,
  loadPersonById,
  loadRandomPerson,
} from "../utils.js";

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
<hr>
<button id="prevBt"> <- </button> <button id="nextBt"> -> </button>
<mdbc-options data-index=0></mdbc-options>
`;

class MDBCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.sourceCard = this.shadowRoot.querySelector("#source-card");
    this.currentCard = this.shadowRoot.querySelector("#current-card");
    this.targetCard = this.shadowRoot.querySelector("#target-card");
    this.btPrev = this.shadowRoot.querySelector("#prevBt");
    this.btNext = this.shadowRoot.querySelector("#nextBt");
    this.shadowRoot.querySelector("#change-source").onclick = async () => {
      this.startObj = await loadRandomPerson();
      this.selectedObj = this.startObj;
      this.page = 0;
      this.optionsList = await loadMovieOptions(this.startObj.id);
      this.render();
    };
    this.shadowRoot.querySelector("#change-target").onclick = async () => {
      this.targetObj = await loadRandomPerson();
      this.renderStatus();
      if (this.targetObj.id === this.selectedObj.id) this.winGame();
    };
    this.shadowRoot.querySelector("#search-source").onclick = async () => {
      this.startObj = await loadPersonByName(
        this.shadowRoot.querySelector("#text-source").value
      );
      this.selectedObj = this.startObj;
      this.page = 0;
      this.optionsList = await loadMovieOptions(this.startObj.id);
      this.render();
    };
    this.shadowRoot.querySelector("#search-target").onclick = async () => {
      this.targetObj = await loadPersonByName(
        this.shadowRoot.querySelector("#text-target").value
      );
      if (this.targetObj.id === this.selectedObj.id) this.winGame();
      this.renderStatus();
    };
    this.shadowRoot.querySelector("#new-game").onclick = () => this.loadAsync();
    this.optionsElement = this.shadowRoot.querySelector("mdbc-options");
    this.shadowRoot.addEventListener(
      "optionSelected",
      this.handleOptionSelected
    );
    this.startObj = null;
    this.targetObj = null;
    this.selectedObj = null;
    this.optionsList = null;
    this.currentPath = [];
    this.browsing = "movies";
    this.page = 0;
    this.btPrev.onclick = () => {
      if (this.page > 0) {
        this.page--;
        this.renderOptions();
      }
    };
    this.btNext.onclick = () => {
      this.page++;
      this.renderOptions();
    };
    this.loadAsync = this.loadAsync.bind(this);
    this.renderStatus = this.renderStatus.bind(this);
    this.renderOptions = this.renderOptions.bind(this);
    this.loadAsync();
  }

  async loadAsync() {
    this.targetObj = await loadRandomPerson();
    this.startObj = await loadRandomPerson();
    this.selectedObj = this.startObj;
    this.optionsList = await loadMovieOptions(this.startObj.id);
    this.render();
  }

  winGame = () => {
    alert("Congratulations!");
    const previousRuns = localStorage.getItem("movies_cartographer") || "[]";
    let runs = JSON.parse(previousRuns);
    runs.push(this.currentPath);
    localStorage.setItem("movies_cartographer", JSON.stringify(runs));
  };

  handleOptionSelected = async ({ detail }) => {
    this.page = 0;
    if (detail === this.targetObj.id) {
      this.winGame();
      return;
    }
    let newObj, newList;
    if (this.browsing === "movies") {
      newObj = await loadMovieById(detail);
      newList = await loadPeopleOptions(newObj.id);
    } else {
      newObj = await loadPersonById(detail);
      newList = await loadMovieOptions(newObj.id);
    }
    if (newObj.name && newList.length > 0) {
      this.optionsList = newList;
      this.selectedObj = newObj;
      if (this.browsing === "movies") this.browsing = "people";
      else this.browsing = "movies";
    } else {
      alert("Search unsuccesful. Select another");
    }
    this.render();
  };

  renderStatus() {
    //note it alternates Person -> Movie -> Person
    if (
      this.currentPath.length === 0 ||
      this.currentPath.slice(-1)[0] !== this.selectedObj.id
    ) {
      this.currentPath.push(this.selectedObj.id);
    }
    if (!this.startObj || !this.selectedObj || !this.targetObj) return;
    this.sourceCard.dataset.label = `Start: ${this.startObj.name}`;
    this.sourceCard.dataset.alt = `Photo of ${this.startObj.name}`;
    this.sourceCard.dataset.source = `${IMAGES_ENDPOINT}${this.startObj.img_path}`;
    this.currentCard.dataset.label = `Current: ${this.selectedObj.name}`;
    this.currentCard.dataset.alt = `Photo of ${this.selectedObj.name}`;
    this.currentCard.dataset.source = `${IMAGES_ENDPOINT}${this.selectedObj.img_path}`;
    this.targetCard.dataset.label = `Target: ${this.targetObj.name}`;
    this.targetCard.dataset.alt = `Photo of ${this.targetObj.name}`;
    this.targetCard.dataset.source = `${IMAGES_ENDPOINT}${this.targetObj.img_path}`;
  }

  renderOptions() {
    this.optionsElement.dataset.options = JSON.stringify(this.optionsList);
    this.optionsElement.dataset.index = this.page;
  }

  render() {
    this.renderStatus();
    this.renderOptions();
  }
}

export { MDBCApp };
