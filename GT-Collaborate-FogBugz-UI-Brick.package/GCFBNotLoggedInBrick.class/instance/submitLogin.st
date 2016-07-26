actions
submitLogin
	self loginResultBrick visible: false.
	self loginButtonBrick 
		disable;
		text: 'Logging to Pharo FogBugz'.
	self book 
		login: self emailInputBrick text asString
		password: self passwordInputBrick text asString;
		login; 
		update.