tests
testTopicAddedReceivedByFilter
	book subscribe: GCFogBugzCaseAdded do: [ :ann | results addLast: ann. semaphore signal ].
	cases addTopic: self newTopicAdded.
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCFogBugzCaseAdded.