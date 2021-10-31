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

<section class="hero">
    <div class="hero-body">
        <p class="title mr-3 mb-2" id="run-number" style="display:inline"></p>
        <button class="button is-warning is-light mb-3" id="challenge">Share!</button>
        <ul class="columns is-multiline"></ul>
    </div>
</section>
`;

class MDBCRun extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    const style = `${+this.dataset.order % 2 === 0 ? 'is-primary' : 'is-link'}`;
    this.shadowRoot.querySelector('section').classList.add(style);
    this.shadowRoot.querySelector(
      '#run-number'
    ).textContent = `Run ${this.dataset.order}`;
    this.list = this.shadowRoot.querySelector('ul');
    this.steps = [];
    this.makeRunSteps = this.makeRunSteps.bind(this);
    this.makeRunSteps();
    this.shadowRoot.querySelector('#challenge').onclick = () => {
      const run = JSON.parse(this.dataset.run);
      const name = prompt('Name your challenge!');
      if (!name) alert('You must enter a name!');
      this.dispatchEvent(
        new CustomEvent('saveExternal', {
          composed: true,
          bubbles: true,
          detail: {
            start: run[0],
            end: run.at(-1),
            path: run.slice(1, -1),
            name: name,
          },
        })
      );
      alert('Challenge saved, see it on community tab');
    };
  }

  async makeRunSteps() {
    const run = JSON.parse(this.dataset.run);
    for (let [index, step] of run.entries()) {
      let li = document.createElement('li');
      li.classList.add('column', 'is-2', 'ml-1', 'mr-1');
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
      this.steps.push(li);
    }
    this.render();
  }

  connectedCallback() {
    this.render();
  }

  render() {
    this.list.innerHTML = '';
    this.steps.forEach((step) => {
      this.list.appendChild(step);
    });
  }
}

export { MDBCRun };
