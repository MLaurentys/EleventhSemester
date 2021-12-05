import Player from "./game_objects/player.js";
import game_template from "../constants/templates/game_template.js";

const GAME_STATE = Object.seal({
  MAIN_MENU: 0,
  TUTORIAL: 1,
  GAME: 2,
});

const template = document.createElement("template");
template.innerHTML = game_template;

class Game extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.attachHandlers = this.attachHandlers.bind(this);
    this.updateGame = this.updateGame.bind(this);
    this.showCommands = this.showCommands.bind(this);
    this.renderGame = this.renderGame.bind(this);
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.shoot = this.shoot.bind(this);
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.menu = this.shadowRoot.querySelector("#main-menu");
    this.controls = this.shadowRoot.querySelector("#controls-menu");
    this.ctx = this.canvas.getContext("2d");
    this.state = GAME_STATE.MAIN_MENU;
    this.player_ship = this.shadowRoot.querySelector("#player-ship");
    this.attachHandlers();
    this.startGame();
  }

  attachHandlers() {
    VANTA.FOG({
      el: this.shadowRoot.querySelector("#game-container"),
    });
    this.shadowRoot.querySelector("#controls").onclick =
      this.showCommands.bind(this);
    this.shadowRoot.querySelector("#play").onclick = this.startGame.bind(this);
    this.shadowRoot.querySelector(".boxclose").onclick =
      this.showMenu.bind(this);
  }

  connectedCallback() {}

  disconnectedCallback() {}

  shoot() {}

  attributeChangedCallback(name, _, newVal) {
    if (name === "data-command") {
      if (newVal === "E") this.player.moveUp();
      else if (newVal === "U") this.player.moveDown();
      else if (newVal === "A") this.shoot();
    }
  }

  static get observedAttributes() {
    return ["data-command"];
  }

  startGame() {
    this.menu.style.display = "none";
    this.player = new Player(this.player_ship, this.ctx);
    this.state = GAME_STATE.GAME;
    this.previousTime = performance.now();
    this.renderGame();
  }

  showCommands() {
    this.menu.style.display = "none";
    this.state = GAME_STATE.TUTORIAL;
    this.controls.style.display = "block";
  }

  showMenu() {
    this.menu.style.display = "block";
    this.state = GAME_STATE.MAIN_MENU;
    this.controls.style.display = "none";
  }

  updateGame(dt) {
    this.player.update(dt);
    this.player.render();
  }

  renderGame() {
    setTimeout(this.renderGame.bind(this), 1000 / 24);
    let now = performance.now();
    const dt = now - this.previousTime;
    this.previousTime = now;
    this.ctx.clearRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.updateGame(dt);
  }
}

export { Game };
