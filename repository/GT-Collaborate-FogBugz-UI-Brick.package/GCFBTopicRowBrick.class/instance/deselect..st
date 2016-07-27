update
deselect: anEvent
	super deselect: anEvent.
	self hideDetails: anEvent.