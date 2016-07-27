update
displayEmptyOrListBrick
	self bookSize isZero 
		ifTrue: [ self displayEmptyListBrick ]
		ifFalse: [ self displayListBrick ]