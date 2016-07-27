announcement handling
loginFailed
	self loginButtonBrick 
		enable;
		text: self loginButtonText.
	self loginResultBrick
		text: self loginFailedText;
		visible: true.