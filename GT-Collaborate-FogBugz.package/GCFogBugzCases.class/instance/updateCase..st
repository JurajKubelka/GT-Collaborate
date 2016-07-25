updating
updateCase: aFogBugzCase 
	collection 
		detect: [ :eachTopic | eachTopic id = aFogBugzCase id ]
		ifFound: [ :aTopic | 
			(aTopic lastModification isNil or: [ 
				aTopic lastModification < aFogBugzCase lastModification ]) ifTrue: [ 
					aTopic case: aFogBugzCase ] ]
		ifNone: [ self addCase: aFogBugzCase ]