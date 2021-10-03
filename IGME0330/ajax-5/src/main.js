main();

function buildAnimalHTML(animal, animalNames) {
  return `<h3>${animal}</h3>
            <ol>
            ${animalNames.map((name) => `<li>${name}</li>`).join('')}
            </ol>
        `;
}

function listPets(petsJSON, key) {
  let htmls = {};
  if (key) {
    document.querySelector('#output').innerHTML = `${buildAnimalHTML(
      petsJSON[key]['title'],
      petsJSON[key]['namelist'] || []
    )}`;
    return;
  }
  Object.keys(petsJSON).forEach(
    (k) =>
      (htmls[petsJSON[k]['type']] = buildAnimalHTML(
        petsJSON[k]['title'],
        petsJSON[k]['namelist']
      ))
  );
  document.querySelector('#output').innerHTML = `
          ${htmls['dognames']}${htmls['catnames']}${htmls['birdnames']}
        `;
}

function createEventHandlers(json) {
  let types = [];
  let titles = [];
  let selector = document.querySelector('#selector');
  let aux = document.createElement('option');
  aux.value = '';
  aux.innerHTML = 'Selecione';
  selector.appendChild(aux);
  Object.keys(json).forEach((k) => {
    types.push(json[k]['type']);
    titles.push(json[k]['title']);
    aux = document.createElement('option');
    aux.value = k;
    aux.innerHTML = json[k]['title'];
    selector.appendChild(aux);
  });
  selector.onchange = (e) => listPets(json, e.target.value);
  document.querySelector('#types').innerHTML += ` ${types}`;
  document.querySelector('#titles').innerHTML += ` ${titles}`;
  document.querySelector('#my-button').onclick = () => listPets(json);
}

function fetchData() {
  const url = 'data/pet-names.json';
  fetch(url)
    .then((response) => {
      if (response.ok) return response.json();
      return response.text().then((text) => {
        throw text;
      });
    })
    .then((json) => {
      console.log(json);
      try {
        createEventHandlers(json);
      } catch (e) {
        console.log('Malformed JSON');
        console.log(e);
      }
    })
    .catch(() =>
      console.log(`In onerror - HTTP Status Code = ${e.target.status}`)
    );
}

function main() {
  fetchData();
}
