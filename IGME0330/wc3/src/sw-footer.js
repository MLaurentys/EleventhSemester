const template = document.createElement('template');
template.innerHTML = `
<style>
footer {
    color: white;
    background-color: black;
    padding: 0.5rem;
    margin-top: 0.5rem;
  }
</style>
<footer>&copy; 2021 Ace Coder</footer>
`;
class SwFooter extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }

  connectedCallback() {
    this.render();
  }

  render() {}
}

export { SwFooter };
