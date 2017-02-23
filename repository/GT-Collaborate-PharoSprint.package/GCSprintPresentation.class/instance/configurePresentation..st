building
configurePresentation: browser
	browser 
		title: [ :sprint | sprint developer name asString, '''s Pharo Sprint Dashboard' ];
		act: [ :presentation | presentation update ] iconName: #glamorousRefresh entitled: 'Update';
		yourself