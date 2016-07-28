accessing - brick
takenColumnBrick: aBrick 
	takenColumnBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	takenColumnBrick := aBrick.
	self theme collaborateWidgetThemer whiteboardColumnStyleFor: aBrick.
	aBrick title: 'Taken'; filter: GCFBTakenPharoSprintFilter new.
	self addBrickBack: aBrick.
