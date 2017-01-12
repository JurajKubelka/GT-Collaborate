removing
removeAll
	^ mutex critical: [ 
		collection removeAll ]