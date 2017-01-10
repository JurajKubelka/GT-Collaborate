tests
testTopicAdded
	journals subscribe: GCFogBugzCaseAdded do: [ :ann | results addLast: ann. semaphore signal ].
	cases addTopic: (GCFogBugzTopicObsolete new).
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCFogBugzCaseAdded.