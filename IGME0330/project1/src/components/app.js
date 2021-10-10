//import cytoscape from 'https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js';
import { API_DATA } from '../env.js';
import { API_ENDPOINT, IMAGES_ENDPOINT } from '../consts.js';
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
    this.start = jeremySumpter;
    this.target = angelinaJolie;
    this.startObj = null;
    this.targetObj = null;
    this.selectedObj = null;
    this.optionsList = null;
    this.loadAsync = this.loadAsync.bind(this);
    this.renderStatus = this.renderStatus.bind(this);
    this.renderOptions = this.renderOptions.bind(this);
    this.loadAsync();
  }

  async loadAsync() {
    this.targetObj = await this.loadPerson(this.target);
    this.startObj = await this.loadPerson(this.start);
    this.selectedObj = this.startObj;
    this.optionsList = await this.loadMovieOptions(this.startObj);
    this.renderStatus();
    this.renderOptions();
  }

  async loadPerson(name) {
    const uri =
      API_ENDPOINT +
      'search/person?api_key=' +
      API_DATA.API_KEY +
      '&query=' +
      encodeURIComponent(name);
    return (await this.loadData(uri)).results[0];
  }

  async loadMovieOptions(actor) {
    const uri =
      API_ENDPOINT +
      `person/${actor.id}/movie_credits` +
      `?api_key=${API_DATA.API_KEY}`;
    return (await this.loadData(uri)).cast;
  }

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
    if (this.startObj) {
      this.sourceCard.dataset.source = `${IMAGES_ENDPOINT}${this.startObj.profile_path}`;
      this.sourceCard.dataset.label = `Start: ${this.startObj.name}`;
      this.sourceCard.dataset.alt = `Photo of ${this.startObj.name}`;
    }
    if (this.selectedObj) {
      this.currentCard.dataset.source = `${IMAGES_ENDPOINT}${this.selectedObj.profile_path}`;
      this.currentCard.dataset.label = `Current: ${this.selectedObj.name}`;
      this.currentCard.dataset.alt = `Photo of ${this.selectedObj.name}`;
    }
    if (this.targetObj) {
      this.targetCard.dataset.source = `${IMAGES_ENDPOINT}${this.targetObj.profile_path}`;
      this.targetCard.dataset.label = `Target: ${this.targetObj.name}`;
      this.targetCard.dataset.alt = `Photo of ${this.targetObj.name}`;
    }
  }

  renderOptions() {
    this.optionsElement.dataset.options = JSON.stringify(this.optionsList);
  }
}

export { MDBCApp };
