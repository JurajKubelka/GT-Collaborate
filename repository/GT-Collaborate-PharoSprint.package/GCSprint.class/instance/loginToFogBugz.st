actions
loginToFogBugz
	self fogbugz isLoggedIn ifTrue: [ ^ self ].
	self fogbugz 
		askForCredentialsIfNecessary;
		login;
		update