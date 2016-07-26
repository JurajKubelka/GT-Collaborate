accessing - brick
passwordInputBrick: aBrick 
	passwordInputBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	passwordInputBrick := aBrick.
	self theme collaborateWidgetThemer loginInputBrickStyleFor: aBrick.
	self passwordLineBrick addBrickBack: aBrick.