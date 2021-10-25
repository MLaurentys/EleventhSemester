const template = document.createElement('template');
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<h1>The runs you completed so far:</h1>
<p id="no-runs"></p>
<ul>
</ul>
<button id="clear">Clear history</button>
`;
class MDBCFavorites extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.shadowRoot.querySelector('#clear').onclick = () => {
      localStorage.removeItem('movies_cartographer');
      this.render();
    };
    this.list = this.shadowRoot.querySelector('ul');
  }

  connectedCallback() {
    this.render();
  }

  renderRun = async (run) => {};

  render() {
    const runs = JSON.parse(localStorage.getItem('movies_cartographer'));
    if (!runs) {
      this.shadowRoot.querySelector('#no-runs').innerHTML =
        'You have not completed any runs';
      return;
    }
    runs.forEach(async (run) => {
      const li = document.createElement('li');
      li.innerHTML = run;
      this.list.appendChild(li);
    });
  }
}

export { MDBCFavorites };
