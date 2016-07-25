tests
testAddNewTopic
	text := self journalHolder addNewTopic.
	self assert: journalBrick mainBrick topicsBrick listBrick band subbricks size equals: 5.