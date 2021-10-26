//import cytoscape from 'https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js';
import { API_DATA } from '../env.js';
import { API_ENDPOINT, IMAGES_ENDPOINT } from '../consts.js';
import {
  loadMovieById,
  loadPeopleOptions,
  loadMovieOptions,
  loadPersonByName,
  loadPersonById,
  loadRandomPerson,
} from '../utils.js';

const template = document.createElement('template');
template.innerHTML = `
<style>
  @import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
</style>
<div class="mt-5 mb-5" style="width:100%; text-align:center">
  <mdbc-game-state id="state"></mdbc-game-state>
  <button id="prevBt"> <- </button> <button id="nextBt"> -> </button>
  <mdbc-options data-index=0></mdbc-options>
</div>
`;

class MDBCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.stateHandler = this.shadowRoot.querySelector('#state');
    this.btPrev = this.shadowRoot.querySelector('#prevBt');
    this.btNext = this.shadowRoot.querySelector('#nextBt');
    this.optionsElement = this.shadowRoot.querySelector('mdbc-options');
    this.source = null;
    this.target = null;
    this.current = null;
    this.optionsList = null;
    this.currentPath = [];
    this.browsing = 'movies';
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
    this.loadGame = this.loadGame.bind(this);
    this.renderStatus = this.renderStatus.bind(this);
    this.renderOptions = this.renderOptions.bind(this);
    this.addEventListeners = this.addEventListeners.bind(this);
    this.restartGame = this.restartGame.bind(this);
    this.checkWonGame = this.checkWonGame.bind(this);
    this.addEventListeners();
    this.loadGame();
  }

  addEventListeners() {
    const addListener = this.shadowRoot.addEventListener;
    addListener('optionSelected', this.handleOptionSelected);
    addListener('selectedRandomSource', async () => {
      this.source = await loadRandomPerson();
      this.current = this.source;
      this.checkWonGame();
      this.restartGame();
      this.render();
    });
    addListener('selectedRandomTarget', async () => {
      this.target = await loadRandomPerson();
      this.checkWonGame();
      this.render();
    });
    addListener('selectedSource', async ({ detail }) => {
      this.source = await loadPersonByName(detail);
      this.current = this.source;
      this.checkWonGame();
      this.restartGame();
      this.render();
    });
    addListener('selectedTarget', async (name) => {
      this.target = await loadPersonByName(name);
      this.checkWonGame();
      this.render();
    });
    addListener('selectedNewGame', async () => {
      this.source = await loadRandomPerson();
      this.current = this.source;
      this.target = await loadRandomPerson();
      this.restartGame();
      this.checkWonGame();
      this.render();
    });
  }

  async restartGame() {
    this.currentPath = [];
    this.page = 0;
    this.optionsList = await loadMovieOptions(this.source.id);
  }

  async loadGame() {
    const challenge = JSON.parse(
      localStorage.getItem('movies_cartographer_challenge')
    );
    if (challenge) {
      localStorage.removeItem('movies_cartographer_challenge');
      this.source = await loadPersonById(challenge.source);
      this.target = await loadPersonById(challenge.target);
      this.current = this.source;
      this.optionsList = await loadMovieOptions(this.source.id);
      this.render();
    } else {
      this.loadAsync();
    }
  }

  async loadAsync() {
    this.target = await loadRandomPerson();
    this.source = await loadRandomPerson();
    this.current = this.source;
    this.optionsList = await loadMovieOptions(this.source.id);
    this.render();
  }

  checkWonGame = () => {
    if (this.current.id !== this.target.id) return false;
    alert('Congratulations!');
    const previousRuns = localStorage.getItem('movies_cartographer') || '[]';
    let runs = JSON.parse(previousRuns);
    runs.push(this.currentPath);
    localStorage.setItem('movies_cartographer', JSON.stringify(runs));
    return true;
  };

  handleOptionSelected = async ({ detail }) => {
    this.page = 0;
    if (this.checkWonGame()) return;
    let newObj, newList;
    if (this.browsing === 'movies') {
      newObj = await loadMovieById(detail);
      newList = await loadPeopleOptions(newObj.id);
    } else {
      newObj = await loadPersonById(detail);
      newList = await loadMovieOptions(newObj.id);
    }
    if (newObj.name && newList.length > 0) {
      this.optionsList = newList;
      this.current = newObj;
      if (this.browsing === 'movies') this.browsing = 'people';
      else this.browsing = 'movies';
    } else {
      alert('Search unsuccesful. Select another');
    }
    this.render();
  };

  renderStatus() {
    if (!(this.source && this.current && this.target)) return;
    let handler = this.stateHandler;
    handler.dataset.source = `${this.source.name};${this.source.img_path}`;
    handler.dataset.current = `${this.current.name};${this.current.img_path}`;
    handler.dataset.target = `${this.target.name};${this.target.img_path}`;
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
