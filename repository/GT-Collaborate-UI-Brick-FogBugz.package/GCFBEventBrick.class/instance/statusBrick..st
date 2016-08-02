accessing - brick
statusBrick: aBrick
	statusBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	statusBrick := aBrick.
	self theme collaborateWidgetThemer eventStatusStyleFor: aBrick.
	self addBrickBack: aBrick.