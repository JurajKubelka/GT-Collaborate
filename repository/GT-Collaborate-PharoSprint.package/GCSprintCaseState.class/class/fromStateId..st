instance creation
fromStateId: aSymbol 
	^ self subclasses 
		detect: [ :eachClass | eachClass stateId = aSymbol ]
		ifFound: [ :aClass | aClass new ]
		ifNone: [ GCSprintUndefinedCaseState new ]