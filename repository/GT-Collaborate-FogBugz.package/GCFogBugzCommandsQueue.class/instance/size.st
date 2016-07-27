accessing
size
	^ mutex critical: [ collection size ]