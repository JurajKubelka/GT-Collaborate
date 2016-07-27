initialization
initialize
	super initialize.
	isEmptyBrickDisplayed := true.
	self theme collaborateWidgetThemer fogBugzMainStyleFor: self.
	self toolBarBrick: self newToolBarBrick.
	self emptyListBrick: self newEmptyListBrick.
	self listBrick: self newListBrick.