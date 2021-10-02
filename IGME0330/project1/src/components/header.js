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
<h1></h1>
<nav class="navbar" role="navigation" aria-label="main navigation">
<div class="navbar-start">
<div class="navbar-item" id="item-1"> Home
</div>
<div class="navbar-item" id="item-2"> App
</div>
<div class="navbar-item" id="item-2"> Favorites
</div>
<div class="navbar-item" id="item-2"> Documentation
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
    this.item1 = this.shadowRoot.querySelector("#item-1");
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
    this.h1.innerHTML = "The Start Wars Cartographer";
    this.item1.innerHTML = "Home";
  }
}

export { SWCHeader };
