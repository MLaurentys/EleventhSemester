import Player from "../game_objects/player.js";
import MainMenu from "../game_objects/main_menu.js";

const GAME_STATE = Object.seal({
  MAIN_MENU: 0,
  TUTORIAL: 1,
  GAME: 2,
});

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
    this.updateGame = this.updateGame.bind(this);
    this.updateMainMenu = this.updateMainMenu.bind(this);
    this.updaters = Object.seal({
      [GAME_STATE.GAME]: this.updateGame,
      [GAME_STATE.MAIN_MENU]: this.updateMainMenu,
      [GAME_STATE.TUTORIAL]: this.renderTutorial,
    });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.player = new Player(this.shadowRoot.querySelector("#player-ship"));
    this.menu = new MainMenu();
    this.shoot = this.shoot.bind(this);
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.ctx = this.canvas.getContext("2d");
    this.state = GAME_STATE.MAIN_MENU;
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

  updateGame() {
    this.player.render(this.ctx);
  }

  updateMainMenu() {
    this.menu.render(this.ctx);
  }

  render() {
    setTimeout(this.render.bind(this), 1000 / 24);
    this.ctx.clearRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.updaters[this.state]();
  }
}

export { Game };
