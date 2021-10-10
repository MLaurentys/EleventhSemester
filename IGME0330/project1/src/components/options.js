import { API_ENDPOINT, IMAGES_ENDPOINT } from '../consts.js';
import { createCard } from '../utils.js';
const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
    #options {
        width:90%;
        margin:auto;
    }
</style>
<div class="columns" id="options">
</div>
`;
class MDBCOptions extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.optionsElement = this.shadowRoot.querySelector('#options');
    this.parsedData = [];
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback(name, oldVal, newVal) {
    if (name === 'data-options') {
      try {
        this.parsedData = JSON.parse(newVal);
      } catch {
        console.log('Could not parse options');
      }
    }
    this.render();
  }

  static get observedAttributes() {
    return ['data-options', 'data-index'];
  }

  render() {
    this.parsedData
      .slice(6 * +this.dataset.index, 6 * (+this.dataset.index + 1))
      .forEach((option) => {
        const div = document.createElement('div');
        div.className = 'column is-2';
        const card = createCard(
          `${IMAGES_ENDPOINT}${option.poster_path}`,
          'Photo of' + option.original_title,
          option.original_title
        );
        div.appendChild(card.cloneNode(true));
        this.optionsElement.appendChild(div);
      });
  }
}

export { MDBCOptions };
