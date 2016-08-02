accessing - brick
mainBrick: aBrick
	mainBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	mainBrick := aBrick.
	self theme collaborateWidgetThemer topicListStyleFor: aBrick.
	self addBrickBack: aBrick.