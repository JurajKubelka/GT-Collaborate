baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			project: 'CIFogBugzAPI' with: [
				spec
					className: #ConfigurationOfCIFogBugzAPI;
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/JurajKubelka/GTCollaborate/main/';
					repository: 'http://smalltalkhub.com/mc/Pharo/ci/main/' ];
			project: 'Trantor' with: [
				spec
					className: #ConfigurationOfTrantor;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/EvanDonahue/Trantor/main/' ];
			project: 'WebBrowser' with: [
				spec
					className: #ConfigurationOfWebBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/WebBrowser/main/' ].
		spec 
			package: #'GT-Collaborate-FogBugz' with: [
				spec requires: #( 'CIFogBugzAPI' ). ];
			package: #'GT-Collaborate-PharoSprint' with: [
				spec requires: #('Trantor' #'GT-Collaborate-FogBugz'). ].
		spec group: 'default' with: #( #'GT-Collaborate-PharoSprint' ). ].
