accessing - brick
nameBrick: aBrick
	nameBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	nameBrick := aBrick.
	aBrick hShrinkWrap; vShrinkWrap; textPosition: #center.
	self addBrickBack: aBrick.