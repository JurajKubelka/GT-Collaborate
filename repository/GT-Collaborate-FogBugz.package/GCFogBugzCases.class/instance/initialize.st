initialization
initialize
	super initialize.
	mutex := Mutex new.
	collection := OrderedCollection new.