as yet unclassified
displayListBrick
	isEmptyBrickDisplayed ifFalse: [ ^ self ].
	self removeBrick: self emptyListBrick.
	self addBrickBack: self listBrick.
	self listBrick update.
	isEmptyBrickDisplayed := false.