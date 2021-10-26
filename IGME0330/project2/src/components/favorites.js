import { IMAGES_ENDPOINT } from '../consts.js';
import { loadMovieById, loadPersonById, createCard } from '../utils.js';

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
<h1 class="is-size-1 has-text-weight-normal">The runs you completed so far:</h1>
<h2 class="is-size-2" id="no-runs"></h2>
<ol>
</ol>
<button id="clear">Clear history</button>
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
    this.list = this.shadowRoot.querySelector('ol');
    this.createRuns = this.createRuns.bind(this);
    this.createRuns();
  }

  async makeRunSteps(run) {
    let ul = document.createElement('ul');
    console.log(run);
    for (let [index, step] of run.entries()) {
      let li = document.createElement('li');
      li.classList.add('fixed-size');
      let card;
      if (index % 2 === 0) {
        const person = await loadPersonById(step);
        card = createCard(
          `${IMAGES_ENDPOINT}${person.img_path}`,
          'Photo of ' + person.name,
          person.name
        );
      } else {
        const movie = await loadMovieById(step);
        card = createCard(
          `${IMAGES_ENDPOINT}${movie.img_path}`,
          'Photo of ' + movie.name,
          movie.name
        );
      }
      li.appendChild(card);
      ul.appendChild(li);
    }
    console.log(ul);
    return ul;
  }

  makeStepsV2(run, index) {
    const template = document.createElement('template');
    template.innerHTML = `
      <mdbc-run data-run=[${run}] data-order=${index + 1}></mdbc-run>
    `;
    return template.content.cloneNode(true);
  }

  async createRuns() {
    const saved = JSON.parse(localStorage.getItem('movies_cartographer'));
    if (!saved) return;
    for (const [ind, save] of saved.entries()) {
      const runEl = await this.makeStepsV2(save, ind);
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
