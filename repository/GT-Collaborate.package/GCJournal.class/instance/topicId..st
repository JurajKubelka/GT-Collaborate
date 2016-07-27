accessing - topic
topicId: idString 
	^ self 
		topicId: idString 
		ifPresent: [ :obj | obj ]
		ifAbsent: [ GCNullTopic default ]