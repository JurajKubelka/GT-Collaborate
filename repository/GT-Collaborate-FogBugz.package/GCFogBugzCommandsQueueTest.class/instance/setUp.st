running
setUp
	super setUp.
	activations := 0.
	queue := GCFogBugzCommandsQueue new.
	queue process: self.