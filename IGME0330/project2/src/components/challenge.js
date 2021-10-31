import { IMAGES_ENDPOINT } from '../consts.js';
import { loadMovieById, loadPersonById, createCard } from '../utils.js';

const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
.fixed-card {
  display: inline-block !important;
  width: 20%;
  height: 50%;
}
#answer {
  display: inline-block;
  position: absolute;
  right:2%;
}
#tab-content div {
  display: none;
}

#tab-content div.is-active {
  display: block;
}
</style>
<div id="challenge">
  <div class="fixed-card" id="source"></div>
  <div class="fixed-card" id="target"></div>
  <div >
    <p class="has-text-weight-medium" id="message"></p>
    <div class="tabs">
      <ul id="hints">
      </ul>
    </div>
    <div id="tabContents">
    </div>
    <div id="hint"></div>
  </div>
  <div id="answer" disabled>
    <button id="show-answer" class="button is-danger">Show answer</button>
  </div>
</div>
`;

async function makeHint(item, index) {
  const hint = document.createElement('div');
  hint.classList.add('fixed-card', 'ml-2', 'mr-2');
  const hintEl =
    index % 2 === 0 ? await loadMovieById(item) : await loadPersonById(item);
  const hintCard = createCard(
    `${IMAGES_ENDPOINT}${hintEl.img_path}`,
    'Photo of ' + hintEl.name,
    hintEl.name
  );
  hint.appendChild(hintCard);
  return hint;
}

class MDBCChallenge extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.challengeEl = this.shadowRoot.querySelector('#challenge');
    this.sourceEl = this.shadowRoot.querySelector('#source');
    this.targetEl = this.shadowRoot.querySelector('#target');
    this.message = this.shadowRoot.querySelector('#message');
    this.hints = this.shadowRoot.querySelector('#hints');
    this.hint = this.shadowRoot.querySelector('#hint');
    this.showAnswer = this.shadowRoot.querySelector('#show-answer');
    this.source = null;
    this.target = null;
    this.sourceCard = null;
    this.targetCard = null;
    this.hintsEls = [];
    this.hintTabs = [];
    this.activeTabs = new Set();
    this.path = this.dataset.path.split(',');
    this.buttonEl = document.createElement('button');
    this.makeDisplay = this.makeDisplay.bind(this);
    this.makeHints = this.makeHints.bind(this);
    this.displayHint = this.displayHint.bind(this);
    this.makeDisplay();
  }

  displayHint(index) {
    this.hint.innerHTML = '';
    const tabs = Array.from(this.activeTabs).sort((a, b) => a - b);
    tabs.forEach((tab) => {
      this.hint.appendChild(this.hintsEls[tab]);
    });
  }

  makeHintTabs() {
    this.hintsEls.forEach((hint, index) => {
      const li = document.createElement('li');
      const a = document.createElement('a');
      a.innerHTML = `Hint #${index + 1}`;
      li.appendChild(a);
      li.classList.add(
        'has-background-warning',
        'mr-1',
        'has-text-danger-dark'
      );
      a.onclick = (evt) => {
        li.classList.toggle('is-active');
        if (this.activeTabs.has(index)) this.activeTabs.delete(index);
        else this.activeTabs.add(index);
        this.displayHint();
      };
      this.hints.appendChild(li);
    });
  }

  async makeHints() {
    for (let [index, el] of this.path.entries()) {
      const hint = await makeHint(el, index);
      this.hintsEls.push(hint);
    }
    this.makeHintTabs();
    this.showAnswer.onclick = () => {
      this.activeTabs = new Set(Array(this.hintsEls.length).keys());
      this.hints.childNodes.forEach((hint, ind) => {
        if (ind > 0) hint.classList.add('is-active');
      });
      this.displayHint();
    };
  }

  async makeDisplay() {
    this.source = await loadPersonById(this.dataset.source);
    this.target = await loadPersonById(this.dataset.target);
    this.sourceCard = createCard(
      `${IMAGES_ENDPOINT}${this.source.img_path}`,
      'Photo of ' + this.source.name,
      this.source.name
    );
    this.targetCard = createCard(
      `${IMAGES_ENDPOINT}${this.target.img_path}`,
      'Photo of ' + this.target.name,
      this.target.name
    );
    await this.makeHints();
    this.render();
  }

  disconnectedCallback() {}

  render() {
    if (this.sourceCard && this.targetCard) {
      this.sourceEl.innerHTML = '';
      this.targetEl.innerHTML = '';
      this.sourceEl.appendChild(this.sourceCard);
      this.targetEl.appendChild(this.targetCard);
      this.message.textContent = `Distance is ${this.path.length}`;
      this.hintTabs.forEach((tab) => this.hints.appendChild(tab));
    }
  }
}

export { MDBCChallenge };
