settings
passwordSettingOn: aBuilder
	<systemsettings>
	(aBuilder setting: #gcFogBugzPassword)
		order: -90019;
		parent: #pharoSystem;
		label: 'FogBugz password';
		target: self uniqueInstance;
		getSelector: #password;
		setSelector: #password:;
		notInStyle;
		default: '';
		ghostHelp: 'type your password';
		description: self loginMessagePrompt