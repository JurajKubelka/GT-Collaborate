displaying
displayLoggedInBrick
	| aBrick |
	aBrick := self newLoggedInBrick.
	self contentsBrick: aBrick.
	aBrick submitUpdate.