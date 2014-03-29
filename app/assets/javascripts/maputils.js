var map = L.mapbox.map('map', 'examples.map-20v6611k').setView([39.12367, -76.81229], 9);

var geoJson = {
    type: 'FeatureCollection',
    features: [{
        type: 'Feature',
        properties: {
            title: 'Washington, D.C.',
            'marker-color': '#f00',
            'marker-size': 'large',
            url: 'http://en.wikipedia.org/wiki/Washington,_D.C.'
        },
        geometry: {
            type: 'Point',
            coordinates: [-77.03201, 38.90065]
        }
    },
    {
        type: 'Feature',
        properties: {
            title: 'Baltimore, MD',
            'marker-color': '#f00',
            'marker-size': 'large',
            url: 'http://en.wikipedia.org/wiki/Baltimore'
        },
        geometry: {
            type: 'Point',
            coordinates: [-76.60767, 39.28755]
        }
    }]
};

// Pass features and a custom factory function to the map
map.featureLayer.setGeoJSON(geoJson);
map.featureLayer.on('click', function(e) {
    e.layer.unbindPopup();
    window.open(e.layer.feature.properties.url);
});

