RAILSPLAY = {
	common: {
		init: function() {
	    // application-wide code
	  }
	},

	users: {
		init: function() {
	    // controller-wide code
	  },

	  show: function() {
	    // action-specific code
	  }
	},

	network_router: {
		init: function() {
	    // controller-wide code
	  },

	  show: function() {
	    // action-specific code
	  },

	  control_mac_filters: function() {
	    // NRC-0#000001
			require(["dojo/dom", "dojo/on", "dojo/parser", "dojo/ready", "dijit/registry", "dijit/form/Button"],
			function(dom, on, parser, ready, registry) {
			  console.info('NRC-0#000001');

			  var enableMACFilterClick = function(evt) {
			    console.log("enableMACFilterBtn clicked");
			  };

			  var disableMACFilterClick = function(evt) {
			    console.log("disableMACFilterBtn clicked");
			  };

			  ready(function() {
			    parser.parse();

			    on(registry.byId("enableMACFilterBtn"), "click", enableMACFilterClick);
			    on(registry.byId("disableMACFilterBtn"), "click", disableMACFilterClick);
			  });
			});
	  },
	}
};

UTIL = {
	exec: function( controller, action ) {
		var ns = RAILSPLAY,
		action = ( action === undefined ) ? "init" : action;

		if ( controller !== "" && ns[controller] && typeof ns[controller][action] == "function" ) {
			ns[controller][action]();
		}
	},

	init: function() {
		var body = document.body,
		controller = body.getAttribute( "data-controller" ),
		action = body.getAttribute( "data-action" );

		UTIL.exec( "common" );
		UTIL.exec( controller );
		UTIL.exec( controller, action );
	}
};