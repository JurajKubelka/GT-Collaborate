as yet unclassified
removeEmptyBrick
	isEmptyBrickDisplayed ifFalse: [ ^ self ].
	self emptyBrick ifNotNil: [ :aBrick |
		self band removeBrick: aBrick ].