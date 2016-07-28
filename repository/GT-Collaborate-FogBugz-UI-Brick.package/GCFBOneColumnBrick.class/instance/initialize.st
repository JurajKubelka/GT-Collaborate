initialization
initialize
	super initialize.
	filter := GCFBAllPharoSprintFilter new.
	self theme collaborateWidgetThemer oneColumnStyleFor: self.
	self labelBrick: self newLabelBrick.
	self listBrick: self newListBrick.