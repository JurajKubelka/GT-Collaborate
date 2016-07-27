initialization
initialize
	super initialize.
	mutex := Mutex new.
	collection := OrderedCollection new.
	process := GCFBQueueProcess new queue: self; yourself.