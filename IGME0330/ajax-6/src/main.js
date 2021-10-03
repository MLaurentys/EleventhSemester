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

async function fetchData() {
  const url = 'data/pet-names.json';
  const response = await fetch(url);
  if (!response.ok) {
    const text = await response.text();
    throw text;
  }
  const json = await response.json();
  createEventHandlers(json);
}

function main() {
  fetchData().catch(e=>console.log(`In catch with e = ${e}`));
}
