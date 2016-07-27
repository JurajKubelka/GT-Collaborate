accessing - brick
updateButtonBrick: aBrick 
	updateButtonBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	updateButtonBrick := aBrick.
	self theme collaborateWidgetThemer loginButtonBrickStyleFor: aBrick.
	aBrick 
		text: self updateButtonText;
		when: #onClicked do: [ self submitUpdate ].
	self addBrickBack: aBrick.