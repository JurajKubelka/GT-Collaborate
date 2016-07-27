accessing - topic
topicId: idString ifPresent: presentBlock ifAbsent: absentBlock
	^ self topics 
			detect: [ :eachTopic | eachTopic id = idString ]
			ifFound: presentBlock
			ifNone: absentBlock