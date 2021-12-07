import Player from "./game_objects/player.js";
import Bullet from "./game_objects/bullet.js";
import Asteroid from "./game_objects/asteroid.js";
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
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.selectElements.bind(this)();
    this.bindNecessaryMethods.bind(this)();
    this.ctx = this.canvas.getContext("2d");
    this.state = GAME_STATE.MAIN_MENU;
    this.timeoutId;
    this.attachHandlers();
    this.showMenu();
  }

  bindNecessaryMethods() {
    this.shoot = this.shoot.bind(this);
    this.attachHandlers = this.attachHandlers.bind(this);
    this.createAsteroid = this.createAsteroid.bind(this);
    this.updateGame = this.updateGame.bind(this);
    this.showCommands = this.showCommands.bind(this);
    this.renderGame = this.renderGame.bind(this);
    this.solveCollisions = this.solveCollisions.bind(this);
    this.endGame = this.endGame.bind(this);
    this.startGame = this.startGame.bind(this);
    this.showMenu = this.showMenu.bind(this);
  }

  selectElements() {
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.container = this.shadowRoot.querySelector("#game-container");
    this.endMenu = this.shadowRoot.querySelector("#end-menu");
    this.menu = this.shadowRoot.querySelector("#main-menu");
    this.controls = this.shadowRoot.querySelector("#controls-menu");
    this.asteroid1 = this.shadowRoot.querySelector("#asteroid-1");
    this.asteroid2 = this.shadowRoot.querySelector("#asteroid-2");
    this.playerShip = this.shadowRoot.querySelector("#player-ship");
    this.bulletEl = this.shadowRoot.querySelector("#bullet");
    this.scoreEl = this.shadowRoot.querySelector("#score");
    this.endScoreEl = this.shadowRoot.querySelector("#end-score");
  }

  attachHandlers() {
    this.vanta = VANTA.FOG({
      el: this.shadowRoot.querySelector("#game-container"),
      minHeight: 20.0,
      minWidth: 20.0,
    });
    this.shadowRoot.querySelector("#controls").onclick = this.showCommands;
    this.shadowRoot.querySelector("#play").onclick = this.startGame;
    this.shadowRoot.querySelector(".boxclose").onclick = this.showMenu;
    this.shadowRoot.querySelector("#back-menu").onclick = this.showMenu;
    this.shadowRoot.querySelector("#play-again").onclick = this.startGame;
  }

  connectedCallback() {}

  disconnectedCallback() {}

  shoot() {
    this.activeBullets.push(
      new Bullet(this.bulletEl, this.ctx, this.player.yPos)
    );
  }

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
    this.endMenu.style.display = "none";
    this.player = new Player(this.playerShip, this.ctx);
    this.state = GAME_STATE.GAME;
    this.previousTime = performance.now();
    this.asteroidGenerationTimer = 2000;
    this.activeBullets = [];
    this.activeAsteroids = [];
    this.score = 0;
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
    this.endMenu.style.display = "none";
    setTimeout(() => this.vanta.resize(), 500); // Seems like there is some resizing at run time
  }

  createAsteroid() {
    if (Math.random() > 0.8)
      this.activeAsteroids.push(new Asteroid(this.asteroid1, this.ctx, false));
    else
      this.activeAsteroids.push(new Asteroid(this.asteroid2, this.ctx, true));
  }

  endGame() {
    this.endMenu.style.display = "block";
    this.ctx.clearRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.endScoreEl.textContent = Math.floor(this.score);
    this.scoreEl.textContent = "";
    clearTimeout(this.timeoutId);
  }

  solveCollisions() {
    for (let ast of this.activeAsteroids) {
      if (ast.xPos - ast.width / 2 > this.player.xPos + this.player.width / 2)
        continue;
      if (
        (ast.yPos - ast.height / 2 >
          this.player.yPos - this.player.height / 2 &&
          ast.yPos - ast.height / 2 <
            this.player.yPos + this.player.height / 2) ||
        (ast.yPos + ast.height / 2 <
          this.player.yPos + this.player.height / 2 &&
          ast.yPos + ast.height / 2 > this.player.yPos - this.player.height / 2)
      ) {
        this.endGame();
        return true;
      }
    }
    return false;
  }

  updateGame(dt) {
    if (this.solveCollisions()) return;
    this.asteroidGenerationTimer -= dt;
    if (this.asteroidGenerationTimer < 0) {
      this.createAsteroid();
      this.asteroidGenerationTimer = 2000;
    }
    if (this.activeBullets[0]?.xPos > this.ctx.canvas.width)
      this.activeBullets.shift();
    this.activeBullets.forEach((bul) => {
      bul.update(dt);
      bul.render();
    });
    if (this.activeAsteroids[0]?.xPos < 0) this.activeAsteroids.shift();
    this.activeAsteroids.forEach((ast) => {
      ast.update(dt);
      ast.render();
    });
    this.player.update(dt);
    this.player.render();
    this.scoreEl.textContent = Math.floor(this.score);
  }

  renderGame() {
    this.timeoutId = setTimeout(this.renderGame.bind(this), 1000 / 24);
    let now = performance.now();
    const dt = now - this.previousTime;
    this.previousTime = now;
    this.score += dt / 1000;
    this.ctx.clearRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    this.updateGame(dt);
  }
}

export { Game };
