accessing - brick
emailLabelBrick: aBrick 
	emailLabelBrick ifNotNil: [ :oldBrick | self removeBrick: oldBrick ].
	emailLabelBrick := aBrick.
	self theme collaborateWidgetThemer loginLabelBrickStyleFor: aBrick.
	aBrick text: 'Login (email):'.
	self emailLineBrick addBrickBack: aBrick.