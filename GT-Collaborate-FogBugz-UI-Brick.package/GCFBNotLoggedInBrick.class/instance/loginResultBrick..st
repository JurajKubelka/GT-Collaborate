accessing - brick
loginResultBrick: aBrick 
	loginResultBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	loginResultBrick := aBrick.
	self theme collaborateWidgetThemer loginResultBrickStyleFor: aBrick.
	aBrick 
		text: self loginFailedText;
		visible: false.
	self addBrickBack: aBrick.