accessing - topic
topicAt: anInteger
	^ mutex critical: [ topics at: anInteger ifAbsent: [ GCNullTopic default ] ]