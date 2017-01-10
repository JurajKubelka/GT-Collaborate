settings
loginSettingOn: aBuilder
	<systemsettings>
	(aBuilder setting: #gcFogBugzLogin)
		order: -90020;
		parent: #pharoSystem;
		label: 'FogBugz login';
		target: self uniqueInstance;
		getSelector: #login;
		setSelector: #login:;
		notInStyle;
		default: '';
		ghostHelp: 'email@example.com';
		description: self loginMessagePrompt