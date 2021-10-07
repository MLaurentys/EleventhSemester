import cytoscape from 'https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js';
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
    width: 30%;
    height: 50%;
  };
</style>
<!-- <div id="cyto-canvas" style="width:500px;height:500px;background-color:red;"> -->
<div class="cards">
  <div class="card fixed-card" style="width: 20%">
    <div class="card-image">
      <figure class="image is-3by4">
        <img
          id="source"
          alt="Actor number 1"
        />
      </figure>
    </div>
    <div class="card-content" style="height: 2em; padding: 0">
      <p id="label-source" class="card-content" style="padding: 0; text-align: center">
      </p>
    </div>
  </div>
  <div class="card fixed-card" style="width: 20%">
    <div class="card-image">
      <figure class="image is-3by4">
        <img
          id="current"
          alt="Actor number 2"
        />
      </figure>
    </div>
    <div class="card-content" style="height: 2em; padding: 0">
      <p id="label-current" class="card-content" style="padding: 0; text-align: center">
        Current: Nicolas Cage
      </p>
    </div>
  </div>
  <div class="card fixed-card" style="width: 20%">
    <div class="card-image">
      <figure class="image is-3by4">
        <img
          id="target"
          alt="Actor number 3"
        />
      </figure>
    </div>
    <div class="card-content" style="height: 2em; padding: 0">
      <p id="label-target" class="card-content" style="padding: 0; text-align: center">
      </p>
    </div>
  </div>
</div>
<hr>
<div id="options" class="cards">

</div>
`;
class MDBCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.startImg = this.shadowRoot.querySelector('#source');
    this.startLabel = this.shadowRoot.querySelector('#label-source');
    this.targetImg = this.shadowRoot.querySelector('#target');
    this.targetLabel = this.shadowRoot.querySelector('#label-target');
    this.selectedImg = this.shadowRoot.querySelector('#current');
    this.selectedLabel = this.shadowRoot.querySelector('#label-current');
    this.optionsElement = this.shadowRoot.querySelector('#options');
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

  asyncconnectedCallback() {}

  disconnectedCallback() {}

  attributeChangedCallback() {}

  static get observedAttribute() {}

  renderStatus() {
    if (this.startObj) {
      this.startLabel.innerHTML = `Start: ${this.startObj.name}`;
      this.startImg.src = `${IMAGES_ENDPOINT}${this.startObj.profile_path}`;
    }
    if (this.targetObj) {
      this.targetLabel.innerHTML = `Target: ${this.targetObj.name}`;
      this.targetImg.src = `${IMAGES_ENDPOINT}${this.targetObj.profile_path}`;
    }
    if (this.selectedObj) {
      this.selectedLabel.innerHTML = `Current: ${this.selectedObj.name}`;
      this.selectedImg.src = `${IMAGES_ENDPOINT}${this.selectedObj.profile_path}`;
    }
  }

  renderOptions() {
    this.optionsElement.innerHTML = `
      <ul>
      ${this.optionsList
        .map((movie) => `<li>${movie.original_title}</li>`)
        .join('')}
      </ul>
    `;
  }
}

export { MDBCApp };
