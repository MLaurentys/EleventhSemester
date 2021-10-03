const template = document.createElement("template");
template.innerHTML = `
<style>
@import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
header h1{
  font-family: SfDistantGalaxy,sans-serif;
  letter-spacing: 1px;
  background-color:green;
};
</style>
<header>
<h1> The Movies Cartographer </h1>
<nav class="navbar" role="navigation" aria-label="main navigation">
  <div class="navbar-brand">
    <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="pages-nav">
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
      <span aria-hidden="true"></span>
    </a>
  </div>
  <div class="navbar-menu">
    <div class="navbar-start" id="pages-nav">
      <a class="navbar-item" id="item-0" href="./about.html"> Home
      </a>
      <a class="navbar-item" id="item-1" href="./app.html"> App
      </a>
      <a class="navbar-item" id="item-2" href="./favorites.html"> Favorites
      </a>
      <a class="navbar-item" id="item-3" href="./sources.html"> Documentation
      </a>
    </div>
  </div>
</nav>
</header>
`;
class SWCHeader extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.h1 = this.shadowRoot.querySelector("h1");
    console.log(`#item-${this.dataset.page}`)
    this.item = this.shadowRoot.querySelector(`#item-${this.dataset.page}`);
    console.log(this.item);
    this.item.className += " has-text-link has-background-light";
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttribute() {
    return ["data-title"];
  }

  render() {
  }
}

export { SWCHeader };
