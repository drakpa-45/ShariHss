/**
 * Author: Pema Drakpa
 * Created on: 25/06/2023.
 */

//This is to load the js based on specified URL.
var scriptLoader = ( function (url) {
    url = '/resources/js/'+url+'.js';
    $.ajax({
        type: 'GET',
        url: url,
        dataType: "script",
        cache: false
    });
});
