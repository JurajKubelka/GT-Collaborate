accessing - brick
mainBrick: aBrick
	mainBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	mainBrick := aBrick.
	self addBrickBack: aBrick.
