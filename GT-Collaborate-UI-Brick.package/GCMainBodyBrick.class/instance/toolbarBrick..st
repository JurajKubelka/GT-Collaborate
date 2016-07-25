accessing - brick
toolbarBrick: aBrick
	toolbarBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	toolbarBrick := aBrick.
	self addBrickBack: aBrick.
