initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer whiteboardStyleFor: self.
	self allColumnBrick: self newColumnBrick.
	self takenColumnBrick: self newColumnBrick.
	self doneColumnBrick: self newColumnBrick.