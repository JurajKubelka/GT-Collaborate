announcement handling
loggedIn
	self contentsBrick isLoggedInWidget
		ifFalse: [ self displayLoggedInBrick ]