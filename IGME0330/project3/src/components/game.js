import Player from "../game_objects/player.js";

const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<div id="game-container">
    <canvas id="game-screen" style="width:100%; height:100%"></canvas>
    <img style="display:none" id="player-ship" src="../../images/ship.png" disabled>
</div>
`;

class Game extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.attachHandlers = this.attachHandlers.bind(this);
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.player = new Player(this.shadowRoot.querySelector("#player-ship"));
    this.shoot = this.shoot.bind(this);
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.ctx = this.canvas.getContext("2d");
    this.attachHandlers();
  }

  attachHandlers() {
    VANTA.FOG({
      el: this.shadowRoot.querySelector("#game-container"),
    });
  }

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  shoot() {}

  attributeChangedCallback(name, _, newVal) {
    if (name === "data-command") {
      if (newVal === "E") this.player.moveUp();
      else if (newVal === "U") this.player.moveDown();
      else if (newVal === "A") this.shoot();
    }
    this.render();
  }

  static get observedAttributes() {
    return ["data-command"];
  }

  render() {
    this.ctx.save();
    this.ctx.clearRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.ctx.restore();
    this.player.render(this.ctx);
  }
}

export { Game };
