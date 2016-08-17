accessing - brick
searchFieldBrick: aBrick  
	searchFieldBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	searchFieldBrick := aBrick.
	aBrick morph on: filter.
	self theme collaborateWidgetThemer fogBugzToolbarInputStyleFor: aBrick.
	self toolBarBrick addBrickBack: aBrick.
