tests
testTopicsChanged
	filter subscribe: GCTopicListChanged do: [ :ann | results addLast: ann. semaphore signal ].
	filter text: 'scr'.
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCTopicListChanged.