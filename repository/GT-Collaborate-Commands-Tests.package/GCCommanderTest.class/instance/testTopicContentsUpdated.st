tests
testTopicContentsUpdated
	firstTopic updateContents: newText.
	self assert: commander commands size equals: 1.