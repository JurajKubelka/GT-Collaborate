initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer journalStyleFor: self.
	self mainBrick: self newMainBrick.
	self contentBrick: self newContentBrick.