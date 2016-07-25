accessing - brick
plusBrick: aBrick
	plusBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	plusBrick := aBrick.
	self theme collaborateWidgetThemer plusStyleFor: aBrick.
	aBrick when: #onMouseHover do: [ :evt :brick | self showPlusStatuses ].
	aBrick visible: false.
	self addBrickBack: aBrick.
