as yet unclassified
addEmptyBrick
	isEmptyBrickDisplayed ifTrue: [ ^ self ].
	self emptyBrick ifNotNil: [ :aBrick |
		self band addBrickBack: aBrick ].