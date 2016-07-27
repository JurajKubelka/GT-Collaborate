initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer developerStyleFor: self.
	self nameBrick: self newNameBrick.