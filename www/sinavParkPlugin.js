var exec = require('cordova/exec');
var successCB;
var errorCB;
/* constructor */
function isJB() {}

isJB.prototype.dummy = function() {
    exec(
        successCB(result),
         errorCB(err)
         , "sinavParkPlugin", "isJB", []);
}


module.exports = sinavParkPlugin;