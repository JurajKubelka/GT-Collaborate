accessing - brick
doneColumnBrick: aBrick 
	doneColumnBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	doneColumnBrick := aBrick.
	self theme collaborateWidgetThemer whiteboardColumnStyleFor: aBrick.
	aBrick title: 'Done'; filter: GCFBDonePharoSprintFilter new.
	self addBrickBack: aBrick.
