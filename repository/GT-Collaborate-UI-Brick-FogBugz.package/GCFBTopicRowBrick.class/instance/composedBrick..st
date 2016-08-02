accessing - brick
composedBrick: aBrick
	composedBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	composedBrick := aBrick.
	aBrick hSpaceFill; vShrinkWrap.
	self addBrickBack: aBrick.