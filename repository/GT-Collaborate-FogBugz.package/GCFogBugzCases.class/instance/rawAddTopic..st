adding
rawAddTopic: aGCFogBugzCase
	^ mutex critical: [ collection addLast: aGCFogBugzCase ]
