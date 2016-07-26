announcement handling
networkError: aGCFBNetworkError 
	self textBrick 
		text: (self networkErrorText: aGCFBNetworkError).
	self updateButtonBrick 
		enable;
		text: self updateButtonText