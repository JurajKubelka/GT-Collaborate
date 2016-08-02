adding
addEmptyBrick
	isEmptyBrickDisplayed ifTrue: [ ^ self ].
	self emptyBrick ifNotNil: [ :aBrick |
		self addBrickBack: aBrick.
		isEmptyBrickDisplayed := true ].