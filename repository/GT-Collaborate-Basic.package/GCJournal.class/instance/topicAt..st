accessing - topic
topicAt: index
	^ self topics at: index ifAbsent: [ GCNullTopic default ]