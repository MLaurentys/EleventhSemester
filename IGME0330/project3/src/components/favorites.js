import { IMAGES_ENDPOINT } from '../consts.js';
import {
  loadMovieById,
  loadPersonById,
  createCard,
  saveExternal,
} from '../utils.js';
import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.1.3/firebase-app.js';
import {
  getDatabase,
  ref,
  set,
  push,
  onValue,
} from 'https://www.gstatic.com/firebasejs/9.1.3/firebase-database.js';

const firebaseConfig = {
  apiKey: 'AIzaSyDX4_D8zn-tbarc1cGGKS-kb7X-R3vTvvM',
  authDomain: 'moviescartographer.firebaseapp.com',
  databaseURL: 'https://moviescartographer-default-rtdb.firebaseio.com',
  projectId: 'moviescartographer',
  storageBucket: 'moviescartographer.appspot.com',
  messagingSenderId: '995808201327',
  appId: '1:995808201327:web:a09623865b3f4d71069b9a',
};

const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
.fixed-size {
  display: inline-block !important;
  width: 20%;
  height: 50%;
}
</style>
<div class="container">
  <button class="button is-danger is-light mt-2 mb-3" id="clear">Clear history</button>
  <h1 class="is-size-1 has-text-weight-normal">The runs you completed so far:</h1>
  <h2 class="is-size-2" id="no-runs"></h2>
  <ol>
  </ol>
</div>
`;
class MDBCFavorites extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.shadowRoot.querySelector('#clear').onclick = () => {
      localStorage.removeItem('movies_cartographer');
      this.runs = [];
      this.render();
    };
    this.runs = [];
    this.app = initializeApp(firebaseConfig);
    this.db = getDatabase();
    this.challengesRef = ref(this.db, 'challenges');
    this.list = this.shadowRoot.querySelector('ol');
    this.createRuns = this.createRuns.bind(this);
    this.createRuns();
    this.addEventListener('saveExternal', ({ detail }) =>
      saveExternal(this.challengesRef, detail)
    );
  }

  async makeRunSteps(run, index) {
    const template = document.createElement('template');
    template.innerHTML = `
      <mdbc-run data-run=[${run}] data-order=${
      index + 1
    } class="mb-3"></mdbc-run>
    `;
    return template.content.cloneNode(true);
  }

  async createRuns() {
    const saved = JSON.parse(localStorage.getItem('movies_cartographer'));
    if (!saved) return;
    for (const [ind, save] of saved.entries()) {
      const runEl = await this.makeRunSteps(save, ind);
      this.runs.push(runEl);
    }
    this.render();
  }

  connectedCallback() {
    this.render();
  }

  renderRun = async (run) => {};

  render() {
    if (!this.runs) {
      this.shadowRoot.querySelector('#no-runs').innerHTML =
        'You have not completed any runs';
      return;
    }
    this.runs.forEach((run) => {
      this.list.appendChild(run);
    });
  }
}

export { MDBCFavorites };
