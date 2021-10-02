import { SWCHeader } from "./components/header.js";

const init = () => {
  const url = "data/all.json";
  customElements.define("swc-header", SWCHeader);
};

window.onload = init;
