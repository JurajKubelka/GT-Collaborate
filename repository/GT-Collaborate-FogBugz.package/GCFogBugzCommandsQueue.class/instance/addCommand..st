adding
addCommand: aGCFogBugzCommand 
	^ mutex critical: [ 
		collection 
			detect: [ :eachCommand | eachCommand = aGCFogBugzCommand ] 
			ifFound: [ :aCommand | aCommand ]
			ifNone: [ | result |
				result := collection addLast: aGCFogBugzCommand.
				self execute.
				^ result ] ]