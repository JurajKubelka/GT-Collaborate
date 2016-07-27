accessing - brick
toolBarBrick: aBrick 
	toolBarBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	toolBarBrick := aBrick.
	self theme collaborateWidgetThemer fogBugzToolbarStyleFor: aBrick.
	self addBrickBack: aBrick.
