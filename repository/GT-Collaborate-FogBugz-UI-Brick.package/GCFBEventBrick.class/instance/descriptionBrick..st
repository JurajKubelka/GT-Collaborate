accessing - brick
descriptionBrick: aBrick
	descriptionBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	descriptionBrick := aBrick.
	self theme collaborateWidgetThemer eventDescriptionStyleFor: aBrick.
	self addBrickBack: aBrick.