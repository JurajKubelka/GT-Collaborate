tests
testTopicAdded
	filter subscribe: GCTopicAdded do: [ :ann | results addLast: ann. semaphore signal ].
	cases addTopic: self newTopicAdded.
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCTopicAdded.