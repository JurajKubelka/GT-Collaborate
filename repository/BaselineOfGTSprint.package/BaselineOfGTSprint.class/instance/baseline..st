baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			baseline: 'MQTTChat' with: [
				spec
					repository: 'github://JurajKubelka/MQTTChat/repository';
					loads: 'default' ];
			project: 'MQTT' with: [
				spec
					className: #ConfigurationOfMQTT;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/MQTT/main/' ];
			baseline: 'FogBugz' with: [
				spec
					repository: 'github://JurajKubelka/FogBugz/src';
					loads: 'default' ];
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
			package: #'GT-Collaborate-PharoSprintServer' with: [
				spec requires: #('Trantor'). ];
			package: #'GT-Collaborate-PharoSprint' with: [
				spec requires: #( #'MQTTChat' #'Trantor' #'FogBugz' #'GT-Collaborate-FogBugzWebhooks' #'GT-Collaborate-PharoSprintServer'). ];
			group: 'client' with: #( #'GT-Collaborate-PharoSprint' #'WebBrowser' );
			group: 'sprint' with: #( #'GT-Collaborate-PharoSprintServer' );
			group: 'webhooks' with: #( #'GT-Collaborate-FogBugzWebhooks' );
			group: 'default' with: #(client);
			group: 'all' with: #(default sprint webhooks).
	].