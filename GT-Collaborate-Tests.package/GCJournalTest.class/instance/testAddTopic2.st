tests
testAddTopic2
	"Do not add a topic with a same id."
	self testAddTopic.
	journal addTopic: (GCTopic text id: flushedResults first topic id).
	self flushResults.
	self assert: flushedResults isEmpty.
	self assert: journal topics size equals: 5.