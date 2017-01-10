accessing - topic
topicWithNumber: anInteger 
	^ mutex critical: [ collection detect: [ :eachTopic | eachTopic id = anInteger ] ifNone: [ GCFogBugzNullCase default ] ]