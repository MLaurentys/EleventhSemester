const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<style>
</style>
<div class="container" style="width:100%; text-align:center">
  <div class="columns">
    <div class="column is-three-quarters">
      <auae-game id="game"></auae-game>
    </div>
    <div class="column is-one-quarter">
      <auae-audio-controller id="controller"></auae-audio-controller>
    </div>
  </div>
</div>
`;

class App extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.controller = this.shadowRoot.querySelector("#controller");
    this.game = this.shadowRoot.querySelector("#game");
    this.attachHandlers = this.attachHandlers.bind(this);
    this.attachHandlers();
  }

  attachHandlers() {
    this.addEventListener("command", ({ detail }) => {
      this.game.dataset.command = detail;
    });
  }

  render() {}
}

export { App };
