testing
isEmpty
	^ mutex critical: [ collection isEmpty ]