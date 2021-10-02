const template = document.createElement("template");
template.innerHTML = `
<style>
header {
  color: white;
  background-color: black;
  padding: .5em;
  user-select: none;
  margin-bottom: .5rem;
}
header h1{
  font-family: SfDistantGalaxy,sans-serif;
  letter-spacing: 1px;
}
header span{
  font-variant: small-caps;
  font-weight: bolder;
  font-family: sans-serif;
  font-style: italic;
}
</style>
<header>
<h1></h1>
<span></span>
</header>
`;
class SWCHeader extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.h1 = this.shadowRoot.querySelector("h1");
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
    this.span.innerHTML = this.currentQuote;
  }
}

export { SWCHeader };
