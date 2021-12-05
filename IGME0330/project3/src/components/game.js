import Player from "./game_objects/player.js";

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
<style>
#controls-img {
  width:100%;
  height:100%;
}
#controls-menu {
  top:0%;
  height:100%;
  max-width:100%;
}
#main-menu {
  top:30%;
}
.menu-container {
  position:absolute;
  left:50%;
  transform: translate(-50%, 0);
  height:60%;
  min-width:20%;
}
.menu-button {
  min-width:40%;
  margin:auto;
  display:block;
}
a.boxclose{
  float:right;
  margin-top:-30px;
  margin-right:-30px;
  cursor:pointer;
  color: #fff;
  border: 1px solid #AEAEAE;
  border-radius: 30px;
  background: #605F61;
  font-size: 31px;
  font-weight: bold;
  display: inline-block;
  line-height: 0px;
  padding: 11px 3px;       
}
.boxclose:before {
  content: "×";
}
</style>
<div id="game-container">
    <div id="vanta"  style="width:100%; height:100%"> </div>
    <canvas style="width:100%; height:100%"></canvas>
    <img style="display:none" id="player-ship" src="../../images/ship.png" disabled>
    <div id="main-menu" class="menu-container">
      <img src="../images/title.png"/>
      <button id="play" class="button menu-button is-success mt-5 mb-5">Play</button>
      <button id="controls" class="button menu-button is-info">Controls</button>
    </div>
    <div id="controls-menu" class="menu-container" style="display:none;">
      <img id="controls-img" src="../images/scrollPSD_2.png"/>
      <button> </button>
    </div>
</div>
`;

class Game extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.attachHandlers = this.attachHandlers.bind(this);
    this.updateGame = this.updateGame.bind(this);
    this.showCommands = this.showCommands.bind(this);
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.shoot = this.shoot.bind(this);
    this.canvas = this.shadowRoot.querySelector("canvas");
    this.menu = this.shadowRoot.querySelector("#main-menu");
    this.controls = this.shadowRoot.querySelector("#controls-menu");
    this.ctx = this.canvas.getContext("2d");
    this.state = GAME_STATE.MAIN_MENU;
    this.player = new Player(this.shadowRoot.querySelector("#player-ship"));
    this.attachHandlers();
  }

  attachHandlers() {
    VANTA.FOG({
      el: this.shadowRoot.querySelector("#game-container"),
    });
    this.shadowRoot.querySelector("#controls").onclick =
      this.showCommands.bind(this);
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

  showCommands() {
    this.menu.style.display = "none";
    this.controls.style.display = "block";
  }

  updateGame() {
    this.player.render(this.ctx);
  }

  render() {
    setTimeout(this.render.bind(this), 1000 / 24);
    this.ctx.clearRect(0, 0, this.ctx.canvas.width, this.ctx.canvas.height);
    if (this.state === GAME_STATE.GAME) this.updateGame();
  }
}

export { Game };
