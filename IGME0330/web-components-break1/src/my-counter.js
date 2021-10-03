// YOUR CODE GOES HERE
class MyCounter extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    let style = document.createElement('style');
    style.textContent = `
      host{
        color: #f76902;
        display:inline-block;
      }
      div{display:inline-block}
      button{border:2px solid red;width:100px;height:50px;}
      span{display:block;text-align:center;font-size:2em;width:200px;height:50px;}
      `;
    this.shadowRoot.appendChild(style);
    this.dataset.count = 0;
    let div = document.createElement('div');
    let domButtonIncrement = document.createElement('button');
    let domButtonDecrement = document.createElement('button');
    domButtonIncrement.textContent = '+';
    domButtonIncrement.onclick = () => {
      this.dataset.count = Number(this.dataset.count) + 1;
      this.render();
    };
    domButtonDecrement.onclick = () => {
      this.dataset.count = Number(this.dataset.count) - 1;
      this.render();
    };
    domButtonDecrement.textContent = '-';
    this.shadowRoot.appendChild(div);
    div.appendChild(document.createElement('span'));
    div.appendChild(domButtonDecrement);
    div.appendChild(domButtonIncrement);
  }
  render() {
    this.shadowRoot.querySelector('span').textContent = `${this.dataset.count}`;
  }
}

customElements.define('my-counter', MyCounter);
