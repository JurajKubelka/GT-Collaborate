accessing - brick
emptyListBrick: aBrick 
	emptyListBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	emptyListBrick := aBrick.
	self theme collaborateWidgetThemer fogBugzEmptyListStyleFor: aBrick.
	isEmptyBrickDisplayed ifTrue: [ self addBrickBack: aBrick ].
