import { MDBCHeader } from './components/header.js';
import { MDBCApp } from './components/app.js';
import { MDBCFooter } from './components/footer.js';
import { MDBCCard } from './components/card.js';
import { MDBCOptions } from './components/options.js';

const init = () => {
  const url = 'data/all.json';
  customElements.define('mdbc-header', MDBCHeader);
  customElements.define('mdbc-app', MDBCApp);
  customElements.define('mdbc-footer', MDBCFooter);
  customElements.define('mdbc-card', MDBCCard);
  customElements.define('mdbc-options', MDBCOptions);
};

window.onload = init;
