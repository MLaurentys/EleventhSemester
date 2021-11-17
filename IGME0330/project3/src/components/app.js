const template = document.createElement('template');
template.innerHTML = `
<style>
  @import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
</style>
<div class="mt-5 mb-5" style="width:100%; text-align:center">
  <auae-audio-processor id="state"></auae-audio-processor>
  <auae-audio-visualizer id="state"></auae-audio-visualizer>
</div>
`;

class App extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
  }

  render() {}
}

export { App };
