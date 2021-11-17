const template = document.createElement("template");
template.innerHTML = `
<style>
  @import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
</style>
<auae-audio-processor></auae-audio-processor>
<div class="mt-5 mb-5" style="width:100%; text-align:center">
  <div style="width:700px;height:300px">
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

  attachHandlers() {
    this.addEventListener(
      "audioUpdated",
      ({ detail }) => (this.controller.dataset.frequency = detail)
    );
  }

  render() {}
}

export { App };
