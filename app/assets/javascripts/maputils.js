    
    var map = L.mapbox.map('map', 'waddleuser.hlae5cf4')
               .setView([0, 0], 0);
   

    var geoJson = {
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
   
    map.featureLayer.setGeoJSON(geoJson);
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

var mapData = function() {

    var map = L.mapbox.map('map', 'waddleuser.hlae5cf4')
               .setView([0, 0], 0);

    // id comes from where?
    var url = 'user/current';
    var geoJson = Object;
    geoJson.type = 'FeatureCollection';
    
    $.getJSON({ dataType: 'json',
               url     : url,
               success : function (data, textStatus, jqXHR) {
                   geoJson.features = data;
                   map.featureLayer.setGeoJSON(geoJson);
               }
    });

 
}
 
