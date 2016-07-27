accessing - brick
passwordLabelBrick: aBrick 
	passwordLabelBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	passwordLabelBrick := aBrick.
	self theme collaborateWidgetThemer loginLabelBrickStyleFor: aBrick.
	aBrick text: 'Password:'.
	self passwordLineBrick addBrickBack: aBrick.