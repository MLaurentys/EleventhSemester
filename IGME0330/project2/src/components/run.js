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
        <p class="title mr-3" id="run-number" style="display:inline"></p>
        <ul></ul>
    </div>
</section>
`;
class MDBCRun extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    console.log(this.dataset);
    this.shadowRoot.querySelector('section').classList.add('is-primary');
    // this.shadowRoot.querySelector('section').classList.add(`
    //     ${Number(this.dataset.order) % 2 === 0 ? 'is-primary' : 'is-link'}
    // `);
    this.shadowRoot.querySelector(
      '#run-number'
    ).textContent = `Run ${this.dataset.order}`;
    this.list = this.shadowRoot.querySelector('ul');
    this.steps = [];
    this.makeRunSteps = this.makeRunSteps.bind(this);
    this.makeRunSteps();
  }

  async makeRunSteps() {
    const run = JSON.parse(this.dataset.run);
    for (let [index, step] of run.entries()) {
      let li = document.createElement('li');
      li.classList.add('fixed-size', 'ml-1', 'mr-1');
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
