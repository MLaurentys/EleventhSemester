import cytoscape from "https://cdn.jsdelivr.net/npm/cytoscape@3.19.1/dist/cytoscape.esm.min.js";
import { API_DATA } from "../../env.js";
import { API_ENDPOINT, IMAGES_ENDPOINT } from "../consts.js";

const nickCage = "nicolas cage";
const angelinaJolie = "angelina jolie";

const template = document.createElement("template");
template.innerHTML = `
<style>
@import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
.fixed {
  width:30%;
  height:50%;
};
</style>
<!-- <div id="cyto-canvas" style="width:500px;height:500px;background-color:red;"> -->
  <div>
    <img id="source"  class="fixed" alt="Actor number 1"/>
    <img id="target" class="fixed" alt="Actor number 2"/>
    <img id="current" class="fixed" alt="Actor number 3"/>
  </div>
</div>
`;
class SWCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: "open" });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.startImg = this.shadowRoot.querySelector('#source');
    this.targetImg = this.shadowRoot.querySelector('#target');
    this.selectedImg = this.shadowRoot.querySelector('#current');
    //this.cyto = cytoscape(this.shadowRoot.querySelector("#cyto-canvas"));
    this.start = nickCage;
    this.target = angelinaJolie;
    this.startObj = null;
    this.targetObj = null;
    this.selectedObj = null;
    this.loadAsync = this.loadAsync.bind(this);
    this.loadAsync();    
  }

  async loadAsync() {
    this.targetObj = await this.loadPerson(this.target);
    this.startObj = await this.loadPerson(this.start);
    this.selectedObj = this.startObj;
    this.render();
  }

  async loadPerson(name) {
    const uri = API_ENDPOINT + "search/person?api_key=" + API_DATA.API_KEY + "&query=" + encodeURIComponent(name);
    const data = await this.loadData(uri);
    return data;
  }

  async loadMovie(name) {
    const uri = API_ENDPOINT + "search/movie?api_key=" + API_DATA.API_KEY + "&query=" + encodeURIComponent(name);
    return await this.loadData(uri);
  }

  async loadData(uriString) {
    const result = await fetch(uriString);
    const value = await result.arrayBuffer();
    const text = (new TextDecoder()).decode(value);
    return JSON.parse(text).results[0];
  }


  asyncconnectedCallback() {
  }

  disconnectedCallback() {}

  attributeChangedCallback() {
  }

  static get observedAttribute() {
  }

  render() {
    console.log(this.startObj);
    console.log(this.targetObj);
    if(this.startObj)
      this.startImg.src = `${IMAGES_ENDPOINT}${this.startObj.profile_path}`;
    if(this.targetObj)
      this.targetImg.src = `${IMAGES_ENDPOINT}${this.targetObj.profile_path}`;
    if(this.selectedObj)
      this.selectedImg.src = `${IMAGES_ENDPOINT}${this.selectedObj.profile_path}`;
  }
}

export { SWCApp };
