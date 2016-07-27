removing
nextCommandOrNil
	^ mutex critical: [ 
		collection 
			ifEmpty: [ nil ]
			ifNotEmpty: [ | command |
				command := collection first.
				collection removeAt: 1.
				command ] ]