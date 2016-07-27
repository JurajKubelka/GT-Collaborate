accessing - brick
textBrick: aBrick 
	textBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	textBrick := aBrick.
	self theme collaborateWidgetThemer loginResultBrickStyleFor: aBrick.
	aBrick 
		text: self issuesText.
	self addBrickBack: aBrick.