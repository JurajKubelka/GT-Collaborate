accessing - brick
contentBrick: aBrick
	contentBrick ifNotNil: [ :anOldBrick | 
		anOldBrick unsubscribe: self.
		self removeBrick: anOldBrick ].
	contentBrick := aBrick.
	self theme collaborateWidgetThemer topicContentStyleFor: aBrick.
	(self contentBrick rubric announcer 
		when: RubTextChanged
		send: #textChanged:
		to: self)
			subscriber: self.
	self addBrickBack: aBrick.
