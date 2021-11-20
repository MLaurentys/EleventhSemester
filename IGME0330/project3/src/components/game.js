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
<div>
    <canvas style="width:100%; height:100%"></canvas>
</div>
`;

class Game extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.attachHandlers = this.attachHandlers.bind(this);
    this.attachHandlers();
    this.playerStance = STANCES.MIDDLE;
  }

  attachHandlers() {}

  connectedCallback() {
    this.render();
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttributes() {
    return ["command"];
  }

  render() {}
}

export { Game };
