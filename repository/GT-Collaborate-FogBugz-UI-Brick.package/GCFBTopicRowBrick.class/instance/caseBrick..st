accessing - brick
caseBrick: aBrick
	caseBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	caseBrick := aBrick.
	self addBrickBack: aBrick.
