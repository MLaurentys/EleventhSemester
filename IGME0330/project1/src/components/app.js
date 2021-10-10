//import cytoscape from 'https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js';
import { API_DATA } from '../env.js';
import { API_ENDPOINT, IMAGES_ENDPOINT } from '../consts.js';
import {
  loadMovieById,
  loadPeopleOptions,
  loadMovieOptions,
  loadPersonByName,
  loadPersonById,
} from '../utils.js';

const nickCage = 'nicolas cage';
const jeremySumpter = 'jeremy sumpter';
const angelinaJolie = 'angelina jolie';

const template = document.createElement('template');
template.innerHTML = `
<style>
  @import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
</style>
<style>
  .fixed-card {
    display: inline-block !important;
    width: 20%;
    height: 50%;
  };
</style>
<!-- <div id="cyto-canvas" style="width:500px;height:500px;background-color:red;"> -->
<div class="app-head">
  <div class="card fixed-card">
    <mdbc-card id="source-card"></mdbc-card>
  </div>
  <div class="card fixed-card">
    <mdbc-card id="current-card"></mdbc-card>
  </div>
  <div class="card fixed-card">
    <mdbc-card id="target-card"></mdbc-card>
  </div>
</div>
<hr>
<mdbc-options data-index=0></mdbc-options>
`;

class MDBCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.sourceCard = this.shadowRoot.querySelector('#source-card');
    this.currentCard = this.shadowRoot.querySelector('#current-card');
    this.targetCard = this.shadowRoot.querySelector('#target-card');
    this.optionsElement = this.shadowRoot.querySelector('mdbc-options');
    this.shadowRoot.addEventListener(
      'optionSelected',
      this.handleOptionSelected
    );
    this.startObj = null;
    this.targetObj = null;
    this.selectedObj = null;
    this.optionsList = null;
    this.browsing = 'movies';
    this.loadAsync = this.loadAsync.bind(this);
    this.renderStatus = this.renderStatus.bind(this);
    this.renderOptions = this.renderOptions.bind(this);
    this.loadAsync();
  }

  async loadAsync() {
    this.targetObj = await loadPersonByName(angelinaJolie);
    this.startObj = await loadPersonByName(jeremySumpter);
    this.selectedObj = this.startObj;
    this.optionsList = await loadMovieOptions(this.startObj.id);
    this.renderStatus();
    this.renderOptions();
  }

  handleOptionSelected = async ({ detail }) => {
    if (this.browsing === 'movies') {
      this.browsing = 'people';
      this.selectedObj = await loadMovieById(detail);
      this.optionsList = await loadPeopleOptions(this.selectedObj.id);
    } else {
      this.browsing === 'movies';
      this.selectedObj = await loadPersonById(detail);
      this.optionsList = await loadMovieOptions(this.selectedObj.id);
    }
    this.render();
  };

  async loadMovie(name) {
    const uri =
      API_ENDPOINT +
      'search/movie?api_key=' +
      API_DATA.API_KEY +
      '&query=' +
      encodeURIComponent(name);
    return await this.loadData(uri);
  }

  async loadData(uriString) {
    const result = await fetch(uriString);
    const value = await result.arrayBuffer();
    const text = new TextDecoder().decode(value);
    return JSON.parse(text);
  }

  renderStatus() {
    console.log(this.selectedObj);
    if (!this.startObj || !this.selectedObj || !this.targetObj) return;
    this.sourceCard.dataset.source = `${IMAGES_ENDPOINT}${this.startObj.img_path}`;
    this.sourceCard.dataset.label = `Start: ${this.startObj.name}`;
    this.sourceCard.dataset.alt = `Photo of ${this.startObj.name}`;
    this.currentCard.dataset.source = `${IMAGES_ENDPOINT}${this.selectedObj.img_path}`;
    this.currentCard.dataset.label = `Current: ${this.selectedObj.name}`;
    this.currentCard.dataset.alt = `Photo of ${this.selectedObj.name}`;
    this.targetCard.dataset.source = `${IMAGES_ENDPOINT}${this.targetObj.img_path}`;
    this.targetCard.dataset.label = `Target: ${this.targetObj.name}`;
    this.targetCard.dataset.alt = `Photo of ${this.targetObj.name}`;
  }

  renderOptions() {
    this.optionsElement.dataset.options = JSON.stringify(this.optionsList);
  }

  render() {
    this.renderStatus();
    this.renderOptions();
  }
}

export { MDBCApp };
