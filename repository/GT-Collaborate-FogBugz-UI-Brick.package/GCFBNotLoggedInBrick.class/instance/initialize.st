initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer notLoggedInStyleFor: self.
	self emailLineBrick: self newLineBrick.
	self passwordLineBrick: self newLineBrick.
	self emailLabelBrick: self newLabelBrick.
	self emailInputBrick: self newInputBrick.
	self passwordLabelBrick: self newLabelBrick.
	self passwordInputBrick: self newPasswordInputBrick.
	self loginButtonBrick: self newButtonBrick.
	self loginResultBrick: self newTextBrick.