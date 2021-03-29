//var baseUrl =   "http://localhost/cted_inv/";


var getUrl = window.location;
console.log('window.location: ' + getUrl);
var baseurlOrigin = getUrl.origin; //or
console.log('getUrl.origin: ' + baseurlOrigin);
var baseUrl = baseurlOrigin+'/cted_inv/';
