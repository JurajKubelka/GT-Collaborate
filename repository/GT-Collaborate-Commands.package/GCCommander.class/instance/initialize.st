initialization
initialize
	super initialize.
	commands := OrderedCollection new.
	nextPutMessage := #addLast: