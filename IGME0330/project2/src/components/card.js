const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<div class="card-image">
    <figure class="image is-3by4"></figure>
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
    this.image = this.shadowRoot.querySelector('figure');
    this.label = this.shadowRoot.querySelector('p');
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

  render() {
    // the following line is necessary as the card is repositioned and re-renders
    //  sometimes before reaching its final position
    if (
      !this.dataset.label ||
      !this.dataset.source ||
      this.image.hasChildNodes()
    )
      return;
    this.label.innerHTML = this.dataset.label;
    if (this.dataset.source.slice(-4) === 'null') {
      const alt = document.createElement('p');
      alt.innerHTML =
        'Profile of ' + this.dataset.label + ' does not have a photo';
      this.image.appendChild(alt);
    } else {
      const img = document.createElement('img');
      img.src = this.dataset.source;
      img.alt = 'Photo of ' + this.dataset.alt;
      this.image.appendChild(img);
    }
  }
}

export { MDBCCard };
