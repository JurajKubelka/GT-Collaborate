accessing - brick
topicsBrick: aBrick
	topicsBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	topicsBrick := aBrick.
	self addBrickBack: aBrick.
