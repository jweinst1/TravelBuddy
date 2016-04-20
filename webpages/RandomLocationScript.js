/**
 * Created by Josh on 4/20/16.
 * Create a random location on the map
 */

//gets a random float number between start and end
function RandFloat(start, end) {
    return (Math.random() * end) + start;
}



var RandLocation = function() {
    this.lat = RandFloat(-90, 90);
    this.lng = RandFloat(-180, 180);
};


var ReverseGeoCodeJSON = function(latlng) {
    var Rgeocoder = new google.maps.Geocoder;
    geocoder.geocode({'location': latlng}, function(results, status) {
        if (status === google.maps.GeocoderStatus.OK) {
            if (results[1]) {
                return results[1].formatted_address;
            } else {
                window.alert('No results found');
            }
        } else {
            window.alert('Geocoder failed due to: ' + status);
        }
    });
};


