tests
testTopicAdded
	journal addTopic: GCTopic text.
	self assert: commander commands size equals: 1.