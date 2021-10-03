'use strict';

const output1 = document.querySelector('#output-1');
const output2 = document.querySelector('#output-2');
const output3 = document.querySelector('#output-3');

const baseURL = 'https://swapi.dev/api/people/';
const homeowrldURL = 'https://swapi.dev/world/';
const loadPerson = (url) => loadTextXHR(url, personLoaded);

const loadTextXHR = (url, callback) => {
  const xhr = new XMLHttpRequest();
  xhr.onload = callback;
  xhr.onerror = (e) => console.log(`Error - Status Code = ${e.target.status}`);
  xhr.open('GET', url);
  xhr.send();
};

const personLoaded = (e) => {
  const json = JSON.parse(e.target.responseText);
  // write this
  // make sure that the character exists - #17 does not - https://swapi.dev/api/people/17
  output1.innerText = json.name;
  loadTextXHR(json.homeworld, worldLoaded);
};

function worldLoaded(e) {
  const json = JSON.parse(e.target.responseText);
  output2.innerText = json.name;
  loadFilms(json.films);
}

function loadFilms(films) {
  if (!films.length) return;
  let newFilms = films;
  let film = newFilms.pop();
  loadTextXHR(film, (e) => {
    filmLoaded(e);
    loadFilms(newFilms);
  });
}

function filmLoaded(e) {
  const json = JSON.parse(e.target.responseText);
  console.log(json);
  output3.innerHTML += `<br><b>${json.title}</b> - ${json.opening_crawl}<br>`;
}

document.querySelector('#my-button').onclick = () => {
  output1.innerText = "the downloaded character's name goes here";
  output2.innerText = "the downloaded character's homeworld name goes here";
  loadPerson(baseURL + getRandomInt(1, 20));
};

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math/random
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min);
}
