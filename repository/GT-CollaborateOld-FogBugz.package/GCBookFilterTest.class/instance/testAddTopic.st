tests
testAddTopic
	self testTopicAdded.
	self assertSize: self defaultSize + 1.