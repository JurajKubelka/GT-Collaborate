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
					versionString: #'development';
					repository: 'http://smalltalkhub.com/mc/EvanDonahue/Trantor/main/' ];
			project: 'WebBrowser' with: [
				spec
					className: #ConfigurationOfWebBrowser;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/TorstenBergmann/WebBrowser/main/' ].
		spec 
			package: #'GT-Collaborate-Basic';
			package: #'GT-Collaborate-Commands' with: [
				spec requires: #(#'GT-Collaborate-Basic' ). ];
			package: #'GT-Collaborate-Tests-Commands' with: [
				spec requires: #(#'GT-Collaborate-Commands' #'GT-Collaborate-Tests-Basic' ). ];
			package: #'GT-Collaborate-FogBugz' with: [
				spec requires: #(#'GT-Collaborate-Basic' 'CIFogBugzAPI' ). ];
			package: #'GT-Collaborate-Trantor-FogBugz' with: [
				spec requires: #('Trantor' #'GT-Collaborate-Basic' #'GT-Collaborate-Commands' ). ];
			package: #'GT-Collaborate-UI-Brick-FogBugz' with: [
				spec requires: #('WebBrowser' #'GT-Collaborate-UI-Brick-Basic' ). ];
			package: #'GT-Collaborate-Tests-Basic' with: [
				spec requires: #(#'GT-Collaborate-Basic' ). ];
			package: #'GT-Collaborate-Trantor-Basic' with: [
				spec requires: #(#'GT-Collaborate-Basic' #'GT-Collaborate-Commands' 'Trantor' ). ];
			package: #'GT-Collaborate-Tests-Trantor-Basic' with: [
				spec requires: #(#'GT-Collaborate-Basic' #'GT-Collaborate-Commands' #'GT-Collaborate-Trantor-Basic' 'Trantor' ). ];
			package: #'GT-Collaborate-UI-Brick-Basic' with: [
				spec requires: #(#'GT-Collaborate-Basic' ). ];
			package: #'GT-Collaborate-Tests-UI-Brick' with: [
				spec requires: #(#'GT-Collaborate-UI-Brick-Basic' ). ].
		spec group: 'default' with: #(#'GT-Collaborate-Basic' #'GT-Collaborate-Commands' #'GT-Collaborate-Tests-Commands' #'GT-Collaborate-FogBugz' #'GT-Collaborate-Trantor-FogBugz' #'GT-Collaborate-Tests-Basic' #'GT-Collaborate-Trantor-Basic' #'GT-Collaborate-UI-Brick-Basic' #'GT-Collaborate-Tests-UI-Brick' #'GT-Collaborate-Tests-Trantor-Basic' #'GT-Collaborate-UI-Brick-FogBugz'). ].
