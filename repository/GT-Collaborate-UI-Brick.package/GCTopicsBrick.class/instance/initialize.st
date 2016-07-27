initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer topicsStyleFor: self.
	self listBrick: self newListBrick.