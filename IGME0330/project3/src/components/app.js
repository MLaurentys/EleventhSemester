const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
</style>
<div class="container columns" style="width:100%; text-align:center">
  <div class="column is-three-quarters">
  </div>
  <div class="column is-one-quarter">
    <auae-audio-controller id="controller"></auae-audio-controller>
  </div>
</div>
`;

class App extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.controller = this.shadowRoot.querySelector("#controller");
    this.attachHandlers = this.attachHandlers.bind(this);
    this.attachHandlers();
  }

  attachHandlers() {}

  render() {}
}

export { App };
