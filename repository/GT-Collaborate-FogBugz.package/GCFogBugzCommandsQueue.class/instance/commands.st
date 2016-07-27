accessing
commands
	^ mutex critical: [ 
		collection copy ]