accessing - brick
numberBrick: aBrick
	numberBrick ifNotNil: [ :anOldBrick | self removeBrick: anOldBrick ].
	numberBrick := aBrick.
	self theme collaborateWidgetThemer issueNumberStyleFor: aBrick.
	aBrick
		enable;
		when: #onClicked do: [ self browseCase ].
	self addBrickBack: aBrick.
