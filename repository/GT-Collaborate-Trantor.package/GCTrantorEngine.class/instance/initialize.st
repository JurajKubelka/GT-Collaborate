initialization
initialize
	super initialize.
	mutex := Mutex new.
	ignoreObjectUpdates := false.
	commands := GCCommands new engine: self; yourself.
	trantor := GCTrantorNode new engine: self; yourself.