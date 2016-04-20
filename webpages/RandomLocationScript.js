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




