accessing - brick
emailLineBrick: aBrick 
	emailLineBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	emailLineBrick := aBrick.
	self theme collaborateWidgetThemer loginLineBrickStyleFor: aBrick.
	self addBrickBack: aBrick.