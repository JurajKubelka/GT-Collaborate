initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer loggedInStyleFor: self.
	self textBrick: self newTextBrick.
	self updateButtonBrick: self newButtonBrick.
