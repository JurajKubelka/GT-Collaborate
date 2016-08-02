initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer topicStyleFor: self.
	self titleBrick: self newTitleBrick.
	self enable.