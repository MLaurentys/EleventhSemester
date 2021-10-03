// YOUR CODE GOES HERE
class IGMFooter extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(document.createElement('span'));
    this.shadowRoot.appendChild(document.createElement('hr'));
    let style = document.createElement('style');
    style.textContent = `
      host{
        color: #f76902;
        display:block;
      }
      hr{border:2px solid red;}
      `;
    this.shadowRoot.appendChild(style);
  }
  connectedCallback() {
    this.render();
  }
  render() {
    const year = this.getAttribute('data-year') ?? '1995';
    const text = this.getAttribute('data-text') ?? 'Not set';
    this.shadowRoot.querySelector(
      'span'
    ).textContent = `&copy; Copyright ${year} ${text}`;
  }
}

customElements.define('igm-footer', IGMFooter);
