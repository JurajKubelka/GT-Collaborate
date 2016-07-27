tests
testTopicAdded
	journals subscribe: GCTopicAdded do: [ :ann | results addLast: ann. semaphore signal ].
	cases addTopic: (GCFogBugzTopic new).
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCTopicAdded.