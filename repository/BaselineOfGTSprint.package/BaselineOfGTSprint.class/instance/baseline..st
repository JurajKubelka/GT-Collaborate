baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			project: 'Glamour' with: [
				"Once Glamour-FastTable-JurajKubelka.69 is integrated in Pharo 6.0,
				we can remove this project."
				spec
					className: #ConfigurationOfGlamourCore;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/Moose/Glamour/main/' ];
			project: 'CIFogBugzAPI' with: [
				spec
					className: #ConfigurationOfCIFogBugzAPI;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JurajKubelka/GTCollaborate/main/';
					repository: 'http://smalltalkhub.com/mc/Pharo/ci/main/' ];
			project: 'MQTT' with: [
				spec
					className: #ConfigurationOfMQTT;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/MQTT/main/' ];
			project: 'Trantor' with: [
				spec
					className: #ConfigurationOfTrantor;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/EvanDonahue/Trantor/main/' ];
			project: 'WebBrowser' with: [
				spec
					className: #ConfigurationOfWebBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/WebBrowser/main/' ];
			package: #'GT-Collaborate-FogBugzWebhooks' with: [
				spec requires: #( 'MQTT' ). ];
			package: #'GT-Collaborate-FogBugz' with: [
				spec requires: #( 'CIFogBugzAPI' 'GT-Collaborate-FogBugzWebhooks' ). ];
			package: #'GT-Collaborate-PharoSprintServer' with: [
				spec requires: #('Trantor'). ];
			package: #'GT-Collaborate-PharoSprint' with: [
				spec requires: #( #'Glamour' #'Trantor' #'GT-Collaborate-FogBugz' #'GT-Collaborate-PharoSprintServer'). ];
			group: 'client' with: #( #'GT-Collaborate-PharoSprint' );
			group: 'sprint' with: #( #'GT-Collaborate-PharoSprintServer' );
			group: 'webhooks' with: #( #'GT-Collaborate-FogBugzWebhooks' );
			group: 'default' with: #(client);
			group: 'all' with: #(default sprint webhooks).
	].