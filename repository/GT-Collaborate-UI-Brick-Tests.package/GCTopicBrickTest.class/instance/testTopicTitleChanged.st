tests
testTopicTitleChanged
	topicBrick topicHolder topic updateContents: newText.
	self assert: topicBrick titleBrick text equals: newText.