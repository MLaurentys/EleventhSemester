const geojson = {
  type: 'FeatureCollection',
  features: [
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [-77.032, 38.913],
      },
      properties: {
        title: 'Mapbox',
        description: 'Washington, D.C.',
      },
    },
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [-122.414, 37.776],
      },
      properties: {
        title: 'Mapbox',
        description: 'San Francisco, California',
      },
    },
    {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [-77.674, 43.084],
      },
      properties: {
        title: 'RIT',
        description: 'University',
      },
    },
  ],
};

mapboxgl.accessToken =
  'pk.eyJ1IjoibXRsYXVyZW50eXMiLCJhIjoiY2t1cTJ1a3NyMHAxczJvcGdtMXd0MWRpdiJ9.9nWVRJhlujfsARyoBHrVxw';

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/mapbox/light-v10',
  center: [-96, 37.8],
  zoom: 3,
});

export function init() {
  // add markers to map
  for (const { geometry, properties } of geojson.features) {
    // create a HTML element for each feature
    const el = document.createElement('div');
    el.className = 'marker';

    // make a marker for each feature and add to the map
    new mapboxgl.Marker(el)
      .setLngLat(geometry.coordinates)
      .addTo(map)
      .setPopup(
        new mapboxgl.Popup({ offset: 25 }) // add popups
          .setHTML(
            `<h3>${properties.title}</h3><p>${properties.description}</p>`
          )
      )
      .addTo(map);
  }
}
