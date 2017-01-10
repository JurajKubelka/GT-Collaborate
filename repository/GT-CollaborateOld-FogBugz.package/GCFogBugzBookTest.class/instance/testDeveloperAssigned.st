tests
testDeveloperAssigned
	| topic |
	journals subscribe: GCDeveloperAssigned do: [ :ann | results addLast: ann. semaphore signal ].
	topic := GCFogBugzTopicObsolete new.
	cases addTopic: topic.
	topic addDeveloperStatus: (GCExpert alice).
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCDeveloperAssigned.