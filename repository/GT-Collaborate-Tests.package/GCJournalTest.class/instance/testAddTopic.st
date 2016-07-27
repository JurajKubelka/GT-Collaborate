tests
testAddTopic
	journal addTopic: (GCTopic text).
	self flushResults.
	self assert: flushedResults size equals: 1.
	self assert: flushedResults first class equals: GCTopicAdded.