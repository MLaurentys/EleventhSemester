const template = document.createElement('template');
template.innerHTML = `
<style>
header {
  color: white;
  background-color: black;
  padding: .5em;
  user-select: none;
  margin-bottom: .5rem;
}
header h1{
  font-family: SfDistantGalaxy,sans-serif;
  letter-spacing: 1px;
}
header span{
  font-variant: small-caps;
  font-weight: bolder;
  font-family: sans-serif;
  font-style: italic;
}
</style>
<header>
<h1></h1>
<span></span>
</header>
`;
class SwHeader extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.h1 = this.shadowRoot.querySelector('h1');
    this.span = this.shadowRoot.querySelector('span');
    this.quotes = this.quotes = [
      "I've got a bad feeling about this ...",
      'Will someone get this big walking carpet out of my way?!',
      'Aren’t you a little short for a stormtrooper?',
      'I hope you know what you’re doing.',
      'Oh, it’s not like that at all. He’s my brother.',
      'We have powerful friends. You’re going to regret this.',
    ];
    this.currentQuote = this.randomQuote();
  }

  connectedCallback() {
    this.onclick = () => {
      this.currentQuote = this.randomQuote();
      this.render();
    };
    this.render();
  }

  disconnectedCallback() {
    this.onclick = null;
  }

  attributeChangedCallback() {
    this.render();
  }

  static get observedAttribute() {
    return ['data-title'];
  }

  randomQuote() {
    return this.quotes[Math.floor(Math.random() * this.quotes.length)];
  }

  render() {
    this.h1.innerHTML = this.dataset.title ? this.dataset.title : 'Start Wars';
    this.span.innerHTML = this.currentQuote;
  }
}

export { SwHeader };
