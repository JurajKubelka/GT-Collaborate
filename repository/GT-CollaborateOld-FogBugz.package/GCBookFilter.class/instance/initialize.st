initialization
initialize
	super initialize.
	mutex := Mutex new.
	topics := self newTopicsCollection