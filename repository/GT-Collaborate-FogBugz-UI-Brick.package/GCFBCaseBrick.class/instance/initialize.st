initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer issueStyleFor: self.
	self numberBrick: self newNumberBrick.
	self titleBrick: self newTitleBrick.