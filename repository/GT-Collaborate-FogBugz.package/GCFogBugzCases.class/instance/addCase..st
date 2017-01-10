adding
addCase: aFogBugzCase 
	^ self addTopic: (GCFogBugzCase new case: aFogBugzCase; yourself)