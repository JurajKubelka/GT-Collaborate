update
updateBricks
	self book isLoggedIn 
		ifTrue: [ self displayLoggedInBrick ]
		ifFalse: [ self displayNotLoggedInBrick ]