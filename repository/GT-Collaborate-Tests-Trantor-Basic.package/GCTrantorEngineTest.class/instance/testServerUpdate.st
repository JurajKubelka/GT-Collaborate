tests
testServerUpdate
	self testTopicContentsChanged.
	self waitObjectChangedSemaphore.
	self assert: trantorServer anyOne asOrderedCollection notEmpty.