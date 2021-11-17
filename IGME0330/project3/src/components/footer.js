const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
.footer {
  width:100%;
  padding-bottom:2rem;
}
#wrapper {
  flex: 1;
}
</style>
<div class="footer">
  <div class="content">
    <p>
      &copy; <strong>AUAE</strong> by
      <a href="https://github.com/MLaurentys">Matheus Laurentys</a>.
    </p>
  </div>
</div>
`;
class Footer extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttribute() {}

  render() {}
}

export { Footer };
