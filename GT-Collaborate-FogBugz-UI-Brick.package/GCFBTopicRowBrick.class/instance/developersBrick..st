accessing - brick
developersBrick: aBrick
	developersBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	developersBrick := aBrick.
	self addBrickBack: aBrick.
