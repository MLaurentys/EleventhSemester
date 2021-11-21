const STANCES = Object.seal({
  TOP: 0,
  MIDDLE: 1,
  BOTTOM: 2,
});

const template = document.createElement("template");
template.innerHTML = `
<link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
/>
<div id="game-container">
    <canvas id="game-screen" style="width:100%; height:100%"></canvas>
</div>
`;

class Game extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.attachHandlers = this.attachHandlers.bind(this);
    this.moveUp = this.moveUp.bind(this);
    this.moveDown = this.moveDown.bind(this);
    this.shoot = this.shoot.bind(this);
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.playerStance = STANCES.MIDDLE;
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

  moveUp() {
    if (this.playerStance === STANCES.MIDDLE) this.playerStance = STANCES.TOP;
    else if (this.playerStance === STANCES.BOTTOM)
      this.playerStance = STANCES.MIDDLE;
  }

  moveDown() {
    if (this.playerStance === STANCES.MIDDLE)
      this.playerStance = STANCES.BOTTOM;
    else if (this.playerStance === STANCES.TOP)
      this.playerStance = STANCES.MIDDLE;
  }

  attributeChangedCallback(name, _, newVal) {
    if (name === "data-command") {
      if (newVal === "E") this.moveUp();
      else if (newVal === "U") this.moveDown();
      else if (newVal === "A") this.shoot();
    }
    this.render();
  }

  static get observedAttributes() {
    return ["data-command"];
  }

  render() {
    this.ctx.save();
    this.clearRect();
    this.ctx.restore();
  }
}

export { Game };
