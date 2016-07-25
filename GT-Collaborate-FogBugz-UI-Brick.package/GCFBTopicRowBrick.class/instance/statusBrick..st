accessing - brick
statusBrick: aBrick
	statusBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	statusBrick := aBrick.
	self theme collaborateWidgetThemer caseStatusStyleFor: aBrick.
	self composedBrick addBrickBack: aBrick.
