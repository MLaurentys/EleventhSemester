const template = document.createElement('template');
template.innerHTML = `
<style>
div {
  height: 340px;
  width: 170px;
  border: 1px solid gray;
  padding: 0.5rem;
  background-color: #f4f4f4;
  font-size: 0.7rem;
  position: relative;
  overflow:scroll;
}

div h2 {
  font-size: 0.9rem;
  font-family: SfDistantGalaxy, sans-serif;
  letter-spacing: 0.67px;
  line-height: 1.2;
  margin-top: 0;
}
div img {
  width: 100px;
}
button {
  position:absolute;
  border-radius:2px;
  top: 1px;
  right: 1px;
  opacity:0.2;
  padding:2px;
}
button:hover{
  opacity:1;
}
</style>
<div>
<button>X</button>
  <h2></h2>
  <img alt="mugshot"/>
  <p id="swcMasters"></p>
  <p id="swcGender"></p>
  <p id="swcHeight"></p>
  <p id="swcMass"></p>
</div>
</header>
`;
class SwCard extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.h2 = this.shadowRoot.querySelector('h2');
    this.img = this.shadowRoot.querySelector('img');
    this.button = this.shadowRoot.querySelector('button');
    this.masters = this.shadowRoot.querySelector('#swcMasters');
    this.gender = this.shadowRoot.querySelector('#swcGender');
    this.height = this.shadowRoot.querySelector('#swcHeight');
    this.mass = this.shadowRoot.querySelector('#swcMass');
  }

  connectedCallback() {
    this.button.onclick = () => this.remove();
    this.render();
  }

  disconnectedCallback() {
    this.button.onclick = null;
  }

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttributes() {
    return ['data-name', 'data-height', 'data-mass', 'data-image'];
  }
  render() {
    this.h2.innerHTML = this.dataset.name;
    this.img.src = this.dataset.image;
    this.gender.innerHTML = `Gender: ${this.dataset.gender}`;
    this.masters.innerHTML = `Masters: ${`<ul>
      ${JSON.parse(this.dataset.masters).map((master) => `<li>${master}</li>`)}
    </ul>`}`;
    this.height.innerHTML = `Height: ${this.dataset.height}`;
    this.mass.innerHTML = `Mass: ${this.dataset.mass}`;
  }
}

export { SwCard };
