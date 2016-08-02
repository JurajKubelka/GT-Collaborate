accessing - brick
loginButtonBrick: aBrick 
	loginButtonBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	loginButtonBrick := aBrick.
	self theme collaborateWidgetThemer loginButtonBrickStyleFor: aBrick.
	aBrick 
		text: self loginButtonText;
		when: #onClicked do: [ self submitLogin ].
	self addBrickBack: aBrick.