accessing - brick
titleBrick: aBrick
	titleBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	titleBrick := aBrick.
	self theme collaborateWidgetThemer topicTitleStyleFor: aBrick.
	self addBrickBack: aBrick.
