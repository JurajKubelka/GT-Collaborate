announcement handling
loggedIn
	self loginButtonBrick 
		enable;
		text: self loginButtonText.
	self loginResultBrick
		text: self loggedInText;
		visible: true.