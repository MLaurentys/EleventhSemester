import { MDBCHeader } from './components/header.js';
import { MDBCApp } from './components/app.js';
import { MDBCFooter } from './components/footer.js';
import { MDBCCard } from './components/card.js';
import { MDBCOptions } from './components/options.js';
import { MDBCFavorites } from './components/favorites.js';
import { MDBCGameState } from './components/game_state.js';
import { MDBCCommunity } from './components/community.js';
import { MDBCChallenge } from './components/challenge.js';
import { MDBCRun } from './components/run.js';

const init = () => {
  const url = 'data/all.json';
  customElements.define('mdbc-header', MDBCHeader);
  customElements.define('mdbc-app', MDBCApp);
  customElements.define('mdbc-footer', MDBCFooter);
  customElements.define('mdbc-card', MDBCCard);
  customElements.define('mdbc-options', MDBCOptions);
  customElements.define('mdbc-favorites', MDBCFavorites);
  customElements.define('mdbc-game-state', MDBCGameState);
  customElements.define('mdbc-community', MDBCCommunity);
  customElements.define('mdbc-challenge', MDBCChallenge);
  customElements.define('mdbc-run', MDBCRun);
};

window.onload = init;
