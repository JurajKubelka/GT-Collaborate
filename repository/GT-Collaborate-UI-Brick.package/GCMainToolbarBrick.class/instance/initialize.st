initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer journalToolbarStyleFor: self.
	self plusButtonBrick: self newPlusButtonBrick.