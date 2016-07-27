accessing - brick
plusButtonBrick: aBrick
	plusButton ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	plusButton := aBrick.
	aBrick text: 'New Topic'.
	aBrick when: #onClicked do:  [ :anEvent | self plusButtonClicked: anEvent ].
	self theme collaborateWidgetThemer toolBarButtonStyleFor: aBrick.
	self addBrickBack: aBrick.