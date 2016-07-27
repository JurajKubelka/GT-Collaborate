announcement handling
networkError: aGCFBNetworkError 
	self loginButtonBrick 
		enable;
		text: self loginButtonText.
	self loginResultBrick
		text: (self networkErrorText: aGCFBNetworkError);
		visible: true.