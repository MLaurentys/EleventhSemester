const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<div class="card-image">
    <figure class="image is-3by4">
        <img/>
    </figure>
</div>
<div class="card-content" style="height: 2em; padding: 0">
    <p id="label-source" class="card-content" style="padding: 0; text-align: center">
    </p>
</div>
`;
class MDBCCard extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.image = this.shadowRoot.querySelector('img');
    this.label = this.shadowRoot.querySelector('p');
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttributes() {
    return ['data-source', 'data-label', 'data-alt'];
  }

  render() {
    this.image.src = this.dataset.source;
    this.image.alt = 'Photo of ' + this.dataset.alt;
    this.label.innerHTML = this.dataset.label;
  }
}

export { MDBCCard };
