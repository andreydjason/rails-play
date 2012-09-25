// INIT-0#000001
require(['dojo/ready'],
function(ready) {
	console.info('INIT-0#000001'); //debug
	ready(function() {
		UTIL.init();
	});
});