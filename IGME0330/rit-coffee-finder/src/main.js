import * as map from './map.js';
import * as ajax from './ajax.js';

let poi;
let loadedPOI = false;

function loadPOI() {
  const url =
    'http://igm.rit.edu/~acjvks/courses/shared/330/maps/igm-points-of-interest.php';
  ajax.downloadFile(url, (jsonStr) => {
    poi = JSON.parse(jsonStr);
    console.log(poi);
    for (let p of poi) {
      map.addMarker(p.coordinates, p.title, 'A POI!', 'marker poi');
    }
  });
}

function setupUI() {
  // it's easy to get [longitude,latitude] coordinates with this tool: http://geojson.io/
  const lnglatRIT = [-77.67454147338866, 43.08484339838443];
  const lnglatIGM = [-77.67990589141846, 43.08447511795301];
  document.getElementById('btn1').onclick = () => {
    map.setZoomLevel(15.5);
    map.setPitchAndBearing();
    map.flyTo(lnglatRIT);
  };
  document.getElementById('btn2').onclick = () => {
    map.setZoomLevel(15.5);
    map.setPitchAndBearing(45, 0);
    map.flyTo(lnglatRIT);
  };
  document.getElementById('btn3').onclick = () => {
    map.setZoomLevel();
    map.setPitchAndBearing();
    map.flyTo();
  };
  document.getElementById('btn4').onclick = () => {
    map.setZoomLevel(18);
    map.setPitchAndBearing();
    map.flyTo(lnglatIGM);
  };
  document.getElementById('btn5').onclick = () => {
    if (!loadedPOI) {
      loadedPOI = true;
      loadPOI();
    }
  };
}

export function init() {
  setupUI();
  map.initMap();
  map.loadMarkers();
  map.addMarkersToMap();
}
