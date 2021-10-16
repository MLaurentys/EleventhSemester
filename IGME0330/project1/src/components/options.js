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
    this.shadowRoot.addEventListener('cardClicked', this.handleOptionSelection);
    this.optionsElement = this.shadowRoot.querySelector('#options');
    this.parsedData = [];
    this.removeCardListeners = this.removeCardListeners.bind(this);
  }

  handleOptionSelection = ({ detail }) => {
    this.dispatchEvent(
      new CustomEvent('optionSelected', {
        composed: true,
        bubbles: true,
        detail: this.parsedData[detail].id,
      })
    );
  };

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {
    this.shadowRoot.removeEventListener('cardClicked');
  }

  removeCardListeners() {
    const cards = this.optionsElement.querySelectorAll('.column');
    cards.forEach((card) => (card.onclick = null));
  }

  attributeChangedCallback(name, oldVal, newVal) {
    if (name === 'data-options') {
      try {
        this.parsedData = JSON.parse(newVal);
      } catch {
        console.info('Could not parse options');
      }
    }
    this.removeCardListeners();
    this.optionsElement.innerHTML = '';
    this.render();
  }

  static get observedAttributes() {
    return ['data-options', 'data-index'];
  }

  handleCardClick = (index, _) => {
    this.shadowRoot.dispatchEvent(
      new CustomEvent('cardClicked', {
        detail: index,
      })
    );
  };

  render() {
    this.parsedData
      .slice(6 * +this.dataset.index, 6 * (+this.dataset.index + 1))
      .forEach((option, index) => {
        const div = document.createElement('div');
        div.onclick = this.handleCardClick.bind(
          null,
          6 * +this.dataset.index + index
        );
        div.className = 'column is-2';
        const card = createCard(
          `${IMAGES_ENDPOINT}${option.img_path}`,
          'Photo of ' + option.name,
          option.name
        );
        div.appendChild(card.cloneNode(true));
        this.optionsElement.appendChild(div);
      });
  }
}

export { MDBCOptions };
