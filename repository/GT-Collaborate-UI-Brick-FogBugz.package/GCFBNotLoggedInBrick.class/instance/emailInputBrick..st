accessing - brick
emailInputBrick: aBrick 
	emailInputBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	emailInputBrick := aBrick.
	self theme collaborateWidgetThemer loginInputBrickStyleFor: aBrick.
	self emailLineBrick addBrickBack: aBrick.