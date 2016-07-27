adding
addCase: aFogBugzCase 
	^ self addTopic: (GCFogBugzTopic new case: aFogBugzCase; yourself)