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
			package: #'GT-Collaborate';
			package: #'GT-Collaborate-Commands' with: [
				spec requires: #(#'GT-Collaborate' ). ];
			package: #'GT-Collaborate-Commands-Tests' with: [
				spec requires: #(#'GT-Collaborate-Commands' #'GT-Collaborate-Tests' ). ];
			package: #'GT-Collaborate-FogBugz' with: [
				spec requires: #(#'GT-Collaborate' 'CIFogBugzAPI' ). ];
			package: #'GT-Collaborate-FogBugz-Trantor' with: [
				spec requires: #('Trantor' #'GT-Collaborate' #'GT-Collaborate-Commands' ). ];
			package: #'GT-Collaborate-FogBugz-UI-Brick' with: [
				spec requires: #('WebBrowser' #'GT-Collaborate-UI-Brick' ). ];
			package: #'GT-Collaborate-Tests' with: [
				spec requires: #(#'GT-Collaborate' ). ];
			package: 'GT-Collaborate-Trantor' with: [
				spec requires: #(#'GT-Collaborate' #'GT-Collaborate-Commands' 'Trantor' ). ];
			package: #'GT-Collaborate-UI-Brick' with: [
				spec requires: #(#'GT-Collaborate' ). ];
			package: #'GT-Collaborate-UI-Brick-Tests' with: [
				spec requires: #(#'GT-Collaborate-UI-Brick' ). ].
		spec group: 'default' with: #(#'GT-Collaborate' #'GT-Collaborate-Commands' 'GT-Collaborate-Commands-Tests' #'GT-Collaborate-Tests' #'GT-Collaborate-Trantor' #'GT-Collaborate-UI-Brick' #'GT-Collaborate-UI-Brick-Tests' #'GT-Collaborate-FogBugz' #'GT-Collaborate-FogBugz-UI-Brick' #'GT-Collaborate-FogBugz-Trantor'). ].
