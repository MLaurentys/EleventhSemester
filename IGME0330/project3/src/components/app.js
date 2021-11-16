const template = document.createElement('template');
template.innerHTML = `
<style>
  @import "https://cdn.jsdelivr.net/npm/bulma@0.9.3/css/bulma.min.css";
</style>
<div class="mt-5 mb-5" style="width:100%; text-align:center">
  <mdbc-game-state id="state"></mdbc-game-state>
  <button id="prevBt" class="button mr-5 mt-5"> <- </button>
  <button id="nextBt" class="button ml-5 mt-5"> -> </button>
  <mdbc-options data-index=0></mdbc-options>
</div>
`;

class MDBCApp extends HTMLElement {
  constructor() {
    super();
    this.attachShadow({ mode: 'open' });
    this.shadowRoot.appendChild(template.content.cloneNode(true));
    this.stateHandler = this.shadowRoot.querySelector('#state');
    this.btPrev = this.shadowRoot.querySelector('#prevBt');
    this.btNext = this.shadowRoot.querySelector('#nextBt');
    this.optionsElement = this.shadowRoot.querySelector('mdbc-options');
    this.source = null;
    this.target = null;
    this.current = null;
    this.optionsList = null;
    this.currentPath = [];
    this.browsing = 'movies';
    this.page = 0;
    this.btPrev.onclick = () => {
      if (this.page > 0) {
        this.page--;
        this.renderOptions();
      }
    };
    this.btNext.onclick = () => {
      this.page++;
      this.renderOptions();
    };
    this.loadAsync = this.loadAsync.bind(this);
    this.loadGame = this.loadGame.bind(this);
    this.renderStatus = this.renderStatus.bind(this);
    this.renderOptions = this.renderOptions.bind(this);
    this.addEventListeners = this.addEventListeners.bind(this);
    this.restartGame = this.restartGame.bind(this);
    this.checkWonGame = this.checkWonGame.bind(this);
    this.finishTargetSelection = this.finishTargetSelection.bind(this);
    this.loadChallenge = this.loadChallenge.bind(this);
    this.loadLocal = this.loadLocal.bind(this);
    this.addEventListeners();
    this.loadGame();
  }

  addEventListeners() {
    const addListener = this.shadowRoot.addEventListener;
    addListener('optionSelected', this.handleOptionSelected);
    addListener('selectedRandomSource', async () => {
      this.source = await loadRandomPerson();
      this.current = this.source;
      this.checkWonGame();
      await this.restartGame();
      this.render();
    });
    addListener('selectedRandomTarget', async () => {
      this.target = await loadRandomPerson();
      this.finishTargetSelection();
    });
    addListener('selectedSource', async ({ detail }) => {
      const nSource = await loadPersonByName(detail);
      if (!nSource) {
        alert('Person with given name not found');
        return;
      }
      this.source = nSource;
      this.current = this.source;
      this.checkWonGame();
      await this.restartGame();
      this.render();
    });
    addListener('selectedTarget', async ({ detail }) => {
      const nTarget = await loadPersonByName(detail);
      if (!nTarget) {
        alert('Person with given name not found');
        return;
      }
      this.target = nTarget;
      this.finishTargetSelection();
    });
    addListener('selectedNewGame', async () => {
      this.source = await loadRandomPerson();
      this.current = this.source;
      this.target = await loadRandomPerson();
      this.restartGame();
      this.checkWonGame();
      this.render();
    });
  }

  finishTargetSelection() {
    localStorage.setItem('movies_cartographer_target', this.target.id);
    this.checkWonGame();
    this.render();
  }

  updateLocalStorage() {
    const newPath = [
      ...JSON.parse(localStorage.getItem('movies_cartographer_path')),
      this.current.id,
    ];
    localStorage.setItem('movies_cartographer_start', this.source.id);
    localStorage.setItem('movies_cartographer_current', this.current.id);
    localStorage.setItem('movies_cartographer_current_type', this.browsing);
    localStorage.setItem('movies_cartographer_target', this.target.id);
    localStorage.setItem('movies_cartographer_path', `[${newPath}]`);
  }

  async restartGame() {
    localStorage.setItem('movies_cartographer_start', this.source.id);
    localStorage.setItem('movies_cartographer_current', this.current.id);
    localStorage.setItem('movies_cartographer_current_type', 'movies');
    localStorage.setItem('movies_cartographer_target', this.target.id);
    localStorage.setItem('movies_cartographer_path', `[${this.source.id}]`);
    this.currentPath = [this.source.id];
    this.page = 0;
    this.optionsList = await loadMovieOptions(this.source.id);
  }

  async loadChallenge() {
    const challenge = JSON.parse(
      localStorage.getItem('movies_cartographer_challenge')
    );
    if (!challenge) return false;
    localStorage.removeItem('movies_cartographer_challenge');
    this.source = await loadPersonById(challenge.source);
    this.target = await loadPersonById(challenge.target);
    this.current = this.source;
    this.currentPath = [this.source.id];
    localStorage.setItem('movies_cartographer_path', `[]`);
    this.updateLocalStorage();
    this.optionsList = await loadMovieOptions(this.source.id);
    return true;
  }

  async loadLocal() {
    const start = JSON.parse(localStorage.getItem('movies_cartographer_start'));
    const current = JSON.parse(
      localStorage.getItem('movies_cartographer_current')
    );
    const target = JSON.parse(
      localStorage.getItem('movies_cartographer_target')
    );
    const path = JSON.parse(localStorage.getItem('movies_cartographer_path'));
    const browsing = localStorage.getItem('movies_cartographer_current_type');
    if (!(start && current && target && path && browsing)) return false;
    this.source = await loadPersonById(start);
    if (browsing === 'movies') {
      this.current = await loadPersonById(current);
      this.optionsList = await loadMovieOptions(this.current.id);
    } else {
      this.current = await loadMovieById(current);
      this.optionsList = await loadPeopleOptions(this.current.id);
    }
    this.browsing = browsing;
    this.target = await loadPersonById(target);
    this.currentPath = path;
    return true;
  }

  async loadGame() {
    if (!(await this.loadChallenge())) {
      if (!(await this.loadLocal())) {
        await this.loadAsync();
      }
    }
    this.render();
  }

  async loadAsync() {
    this.target = await loadRandomPerson();
    this.source = await loadRandomPerson();
    this.current = this.source;
    await this.restartGame();
    this.render();
  }

  checkWonGame() {
    if (this.current.id !== this.target.id) return false;
    alert('Congratulations!');
    const previousRuns = localStorage.getItem('movies_cartographer') || '[]';
    let runs = JSON.parse(previousRuns);
    runs.push(this.currentPath);
    localStorage.setItem('movies_cartographer', JSON.stringify(runs));
    return true;
  }

  handleOptionSelected = async ({ detail }) => {
    this.page = 0;
    let newObj, newList;
    if (this.browsing === 'movies') {
      newObj = await loadMovieById(detail);
      newList = await loadPeopleOptions(newObj.id);
    } else {
      newObj = await loadPersonById(detail);
      newList = await loadMovieOptions(newObj.id);
    }
    if (newObj.name && newList.length > 0) {
      this.optionsList = newList;
      this.current = newObj;
      if (this.browsing === 'movies') this.browsing = 'people';
      else this.browsing = 'movies';
    } else {
      alert('Search unsuccesful. Select another');
      return;
    }
    this.currentPath.push(detail);
    this.updateLocalStorage();
    if (this.checkWonGame()) return;
    this.render();
  };

  renderStatus() {
    if (!(this.source && this.current && this.target)) return;
    let handler = this.stateHandler;
    handler.dataset.source = `${this.source.name};${this.source.img_path}`;
    handler.dataset.current = `${this.current.name};${this.current.img_path}`;
    handler.dataset.target = `${this.target.name};${this.target.img_path}`;
  }

  renderOptions() {
    if (this.page === 0) this.btPrev.disabled = true;
    else this.btPrev.disabled = false;
    if ((this.page + 1) * 6 >= this.optionsList.length - 1)
      this.btNext.disabled = true;
    else this.btNext.disabled = false;
    this.optionsElement.dataset.options = JSON.stringify(this.optionsList);
    this.optionsElement.dataset.index = this.page;
  }

  render() {
    this.renderStatus();
    this.renderOptions();
  }
}

export { MDBCApp };
