import cytoscape from "https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js";
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
<div id="cyto-canvas" style="width:500px;height:500px;background-color:red;">
</div>
`;
class SWCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.cyto = cytoscape(this.shadowRoot.querySelector("#cyto-canvas"));
  }

  connectedCallback() {
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
  }

  static get observedAttribute() {
  }

  render() {
  }
}

export { SWCApp };
