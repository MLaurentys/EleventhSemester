import { MDBCHeader } from './components/header.js';
import { MDBCApp } from './components/app.js';
import { MDBCFooter } from './components/footer.js';

const init = () => {
  const url = 'data/all.json';
  customElements.define('mdbc-header', MDBCHeader);
  customElements.define('mdbc-app', MDBCApp);
  customElements.define('mdbc-footer', MDBCFooter);
};

window.onload = init;
