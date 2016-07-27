accessing - brick
passwordLineBrick: aBrick 
	passwordLineBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	passwordLineBrick := aBrick.
	self theme collaborateWidgetThemer loginLineBrickStyleFor: aBrick.
	self addBrickBack: aBrick.