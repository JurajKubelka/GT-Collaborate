accessing - brick
labelBrick: aBrick 
	labelBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	labelBrick := aBrick.
	self theme collaborateWidgetThemer whiteboardLabelStyleFor: aBrick.
	self updateLabelBrick.
	self addBrickBack: aBrick.