import { initializeApp } from 'https://www.gstatic.com/firebasejs/9.1.3/firebase-app.js';
import {
  getDatabase,
  ref,
  set,
  push,
  onValue,
} from 'https://www.gstatic.com/firebasejs/9.1.3/firebase-database.js';

import { playCustomChallenge } from '../utils.js';

const template = document.createElement('template');
template.innerHTML = `
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css"
    />
<style>
h1{
  font-family: SfDistantGalaxy,sans-serif;
  letter-spacing: 1px;
  font-size: 3em;
  color:snow;
  display: inline-block;
}
.navbar {
  background-color:#F8F8F8;
}
.title-row {
  min-height:15vh;
  background-image: url('https://people.rit.edu/~mtl9706/330/project1/images/header_sky.jpg');
  background-position: 50% 50%;
}
#logo {
  padding:4%;
  width:100px;
}
</style>
<div id="wrapper">
    <h2> Loading challenges </h2>
    <ol id="challenges">
    </ol>
</div>
`;

let oddChallenge = true;

function createChallengeElement(challengeData) {
  const template = document.createElement('template');
  template.innerHTML = `
    <section class="hero ${oddChallenge ? 'is-primary' : 'is-link'}">
    <div class="hero-body">
      <div class="mb-3">
      <p class="title mr-3" style="display:inline">
      ${challengeData.name}
      </p>
      <button class="button is-link"> Try it out! </button>
      </div>
      <mdbc-challenge
        data-source=${challengeData.start}
        data-target=${challengeData.end}
        data-path=${String(challengeData.path)}
      >
      </mdbc-challenge>
      </div>
    </section>
    `;
  oddChallenge = !oddChallenge;
  const el = template.content.cloneNode(true);
  el.querySelector('button').onclick = () => playCustomChallenge(challengeData);
  return el;
}

const firebaseConfig = {
  apiKey: 'AIzaSyDX4_D8zn-tbarc1cGGKS-kb7X-R3vTvvM',
  authDomain: 'moviescartographer.firebaseapp.com',
  databaseURL: 'https://moviescartographer-default-rtdb.firebaseio.com',
  projectId: 'moviescartographer',
  storageBucket: 'moviescartographer.appspot.com',
  messagingSenderId: '995808201327',
  appId: '1:995808201327:web:a09623865b3f4d71069b9a',
};

class MDBCCommunity extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.challengesList = this.shadowRoot.querySelector('#challenges');
    this.challenges = [];
    this.page = 0;
    this.wrapper = this.shadowRoot.querySelector('#wrapper');
    this.app = initializeApp(firebaseConfig);
    this.db = getDatabase();
    this.challengesRef = ref(this.db, 'challenges');
    this.noData = true;
    this.removeNoData = this.removeNoData.bind(this);
    this.challengesChanged = this.challengesChanged.bind(this);
    onValue(this.challengesRef, this.challengesChanged);
  }

  removeNoData() {
    this.noData = false;
    this.wrapper.removeChild(this.wrapper.querySelector('h2'));
  }

  challengesChanged(snapshot) {
    snapshot.forEach((score) => {
      if (this.noData) {
        this.removeNoData();
      }
      const childKey = score.key;
      const childData = score.val();
      const el = createChallengeElement(childData);
      this.challenges.push({ ...childData, el: el });
      this.render();
    });
  }

  connectedCallback() {
    this.render();
  }

  render() {
    if (this.challenges.length > 0)
      this.challengesList.appendChild(this.challenges.at(-1).el);
  }
}

export { MDBCCommunity };
