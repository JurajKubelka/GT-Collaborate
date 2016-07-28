accessing - brick
allColumnBrick: aBrick 
	allColumnBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	allColumnBrick := aBrick.
	self theme collaborateWidgetThemer whiteboardColumnStyleFor: aBrick.
	aBrick title: 'All'; filter: GCFBAllPharoSprintFilter new.
	self addBrickBack: aBrick.
