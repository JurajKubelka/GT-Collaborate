settings
tokenSettingOn: aBuilder
	<systemsettings>
	(aBuilder setting: #gcFogBugzToken)
		order: -90018;
		parent: #pharoSystem;
		label: 'FogBugz token';
		target: self uniqueInstance;
		getSelector: #token;
		setSelector: #token:;
		notInStyle;
		default: '';
		ghostHelp: 'type your token';
		description: self loginMessagePrompt