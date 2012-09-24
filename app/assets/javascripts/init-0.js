require(["dojo/dom", "dojo/router", "dojo/domReady!"], function(router, dom) {
  var greeting;

  router.register("/articles/:id", function(evt) {
    return alert("The article has the id " + evt[id]);
  });

  router.startup();
});
