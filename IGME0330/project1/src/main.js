import { SWCHeader } from "./components/header.js";
import { SWCApp } from "./components/app.js";

const init = () => {
  const url = "data/all.json";
  customElements.define("swc-header", SWCHeader);
  customElements.define("swc-app", SWCApp);
};

window.onload = init;
