accessing - brick
commentBrick: aBrick
	commentBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	commentBrick := aBrick.
	self theme collaborateWidgetThemer eventCommentStyleFor: aBrick.
	self addBrickBack: aBrick.