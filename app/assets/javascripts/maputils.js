   /* 
    var map = L.mapbox.map('map', 'waddleuser.hlae5cf4')
               .setView([0, 0], 0);
   */

/*
    var geoJsonOld = {
        type: 'FeatureCollection',
        features: [{
            type: 'Feature',
            properties: {
                title: 'Washington, D.C.',
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
                url: 'http://en.wikipedia.org/wiki/Baltimore'
            },
            geometry: {
                type: 'Point',
                coordinates: [-76.60767, 39.28755]
            }
        }]
    };
   
*/
    /*
    map.featureLayer.setGeoJSON(geoJson);
    */
    /* 
    var newCoords = geoJson.features[0].geometry.coordinates;
    var newMarker = geoJson.features[0].properties.title;

    // Pass features and a custom factory function to the map
    map.featureLayer.setGeoJSON(geoJson);
    map.featureLayer.on('click', function(e) {
        e.layer.unbindPopup();
        window.open(e.layer.feature.properties.url);
    });

   var geocoder = L.mapbox.geocoder('waddleuser.hlae5cf4', map);
   geocoder.query(newMarker, showMap);

   function showMap(err, data) {
     map.fitBounds(data.lbounds);
   }
   */
    var dummy = 1;

function  mapData() {
    // original map: waddleuser.hlae5cf4
    // new map: waddleuser.hlh59e0j
    var map = L.mapbox.map('map', 'waddleuser.hlh59e0j')
               .setView([40, -74], 2);
    var markerLayer = L.mapbox.markerLayer().addTo(map);

    $.getJSON( 'users/current',
               function (data, textStatus, jqXHR) {
                   var geoJson = {};
                   geoJson.features = data.features;
                   geoJson.type = 'FeatureCollection';
                   markerLayer.setFilter(function() {return false; });
                   markerLayer.setGeoJSON(geoJson);
                   markerLayer.setFilter(function() {return true; });
               }
    );
}
 
