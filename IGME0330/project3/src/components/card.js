const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<div class="card-image">
    <figure class="image is-3by4"></figure>
</div>
<div class="card-content" style="padding: 0">
    <p id="label-source" class="card-content" style="padding: 0; text-align: center">
    </p>
</div>
`;

class MDBCCard extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.image = this.shadowRoot.querySelector('figure');
    this.label = this.shadowRoot.querySelector('p');
    this.render = this.render.bind(this);
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback(name) {
    if (name === 'data-source') {
      this.image.innerHTML = '';
    }
    this.render();
  }

  static get observedAttributes() {
    return ['data-source', 'data-label', 'data-alt'];
  }

  renderLoading() {
    this.label.innerHTML = 'Loading...';
    const img = document.createElement('img');
    img.src = 'https://people.rit.edu/~mtl9706/330/project2/images/loading.jpg';
    img.alt = 'Loading picture';
    this.image.appendChild(img);
  }

  render() {
    if (!this.dataset.label || !this.dataset.source)
      return this.renderLoading();
    this.image.innerHTML = '';
    this.label.innerHTML = this.dataset.label;
    const img = document.createElement('img');
    if (this.dataset.source.slice(-4) === 'null') {
      img.src =
        'https://people.rit.edu/~mtl9706/330/project2/images/no_photo.jpg';
    } else {
      img.src = this.dataset.source;
    }
    img.alt = 'Photo of ' + this.dataset.alt;
    this.image.appendChild(img);
  }
}

export { MDBCCard };
