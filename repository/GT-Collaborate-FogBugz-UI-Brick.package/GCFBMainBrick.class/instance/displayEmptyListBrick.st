displaying
displayEmptyListBrick
	isEmptyBrickDisplayed ifTrue: [ ^ self ].
	self removeBrick: self listBrick.
	self addBrickBack: self emptyListBrick.
	isEmptyBrickDisplayed := true.