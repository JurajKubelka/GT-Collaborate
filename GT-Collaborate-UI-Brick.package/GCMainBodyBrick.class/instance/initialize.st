initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer journalMainStyleFor: self.
	self toolbarBrick: self newToolBarBrick.
	self topicsBrick: self newTopicsBrick.
