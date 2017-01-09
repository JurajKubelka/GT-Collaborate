initialization
initialize
	super initialize.
	mutex := Mutex new.
	collection := OrderedCollection new.
	process := GCFogBugzQueueProcess new queue: self; yourself.