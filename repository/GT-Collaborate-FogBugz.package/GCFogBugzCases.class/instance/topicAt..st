accessing - topic
topicAt: anInteger
	^ mutex critical: [ collection at: anInteger ifAbsent: [ GCFogBugzNullCase default ] ]