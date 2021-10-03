'use strict';
let words1, words2, words3;

function GetRandomElement(array, randomNum = Math.random()) {
  return array[Math.floor(randomNum * array.length)];
}

function GetTechnobabble(amtOfBabbles) {
  let technobabble = '';
  for (let i = 0; i < amtOfBabbles; i++) {
    technobabble += `${GetRandomElement(words1)}
                     ${GetRandomElement(words2)}
                     ${GetRandomElement(words3)}<br>`;
  }
  return technobabble;
}

function UpdateDisplayedTechnobabble(amtOfBabbles = 1) {
  document.querySelector('#output').innerHTML = GetTechnobabble(amtOfBabbles);
}

const xhr = new XMLHttpRequest();
xhr.onload = (e) => {
  [words1, words2, words3] = e.target.responseText
    .split('\n')
    .map((str) => str.split(','));
  UpdateDisplayedTechnobabble();
  document.querySelector('#myButton').onclick = () =>
    UpdateDisplayedTechnobabble(1);
  document.querySelector('#otherButton').onclick = () =>
    UpdateDisplayedTechnobabble(5);
};
xhr.onerror = (e) => console.log(`Error - Status Code = ${e.target.status}`);
xhr.open('GET', 'data/babble-data.csv');
xhr.send();
