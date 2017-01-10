tests
testTopicContentsUpdated
	firstTopic updateContents: newText.
	self flushResults.
	self assert: flushedResults size equals: 1.
	self assert: flushedResults first class equals: GCFogBugzCaseUpdated.
	self assert: flushedResults first topic == firstTopic.