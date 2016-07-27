accessing - brick
titleBrick: aBrick
	titleBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	titleBrick := aBrick.
	aBrick hSpaceFill.
	self addBrickBack: aBrick.
