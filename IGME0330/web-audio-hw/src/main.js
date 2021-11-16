/*
	main.js is primarily responsible for hooking up the UI to the rest of the application
	and setting up the main event loop
*/

// We will write the functions in this file in the traditional ES5 way
// In this instance, we feel the code is more readable if written this way
// If you want to re-write these as ES6 arrow functions, to be consistent with the other files, go ahead!

import * as utils from './utils.js';
import * as audio from './audio.js';
console.log(audio);
// 1 - here we are faking an enumeration
const DEFAULTS = Object.freeze({
  sound1: 'media/New Adventure Theme.mp3',
});

function init() {
  audio.setupWebaudio(DEFAULTS.sound1);
  console.log(audio);
  console.log('init called');
  console.log(
    `Testing utils.getRandomColor() import: ${utils.getRandomColor()}`
  );
  let canvasElement = document.querySelector('canvas'); // hookup <canvas> element
  setupUI(canvasElement);
  console.log('last', audio);
}

function setupUI(canvasElement) {
  // A - hookup fullscreen button
  const fsButton = document.querySelector('#fsButton');

  // add .onclick event to button
  fsButton.onclick = (e) => {
    console.log('init called');
    utils.goFullscreen(canvasElement);
  };

  // add  .onclick event  to button
  playButton.onclick = (e) => {
    console.log(`audioCtx.state before = ${audio.audioCtx.state}`);
    // check  if context  is in suspended  state (autoplay policy)
    if (audio.audioCtx.state == 'suspended') {
      audio.audioCtx.resume();
      console.log(`audioCtx .state after = ${audio.audioCtx.state}`);
      if (e.target.dataset.playing == 'no') {
        // if track  is currently  paused,  play  it
        audio.playCurrentSound();
        e.target.dataset.playing = 'yes'; // our CSS will set the text to "Pause"
        // if track IS playing, pause it
      } else {
        audio.pauseCurrentSound();
        e.target.dataset.playing = 'no '; // our  CSS  will  set  the  text  to  """"Play"""""
      }
    }
    // C - hookup volume slider & label
    let volumeSlider = document.querySelector('#volumeSlider');
    let volumelabel = document.querySelector('#volumeLabel');
    // add .oninput event to slider
    volumeSlider.oninput = (e) => {
      // set the gain
      audio.setVolume(e.target.value);
      // update value of label to match value of slider
      volumelabel.innerHTML = Math.round(e.target.valuel2 * 100);
    };
    // set value of label to match initial value of slider
    volumeSlider.dispatchEvent(new Event('input'));
    // end setupUI
  };
}
export { init };
