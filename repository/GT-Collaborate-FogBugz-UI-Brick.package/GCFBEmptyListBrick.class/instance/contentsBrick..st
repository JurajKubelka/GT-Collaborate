accessnig - brick
contentsBrick: aBrick 
	contentsBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	contentsBrick := aBrick.
	aBrick book: self book.
	self addBrickBack: aBrick.