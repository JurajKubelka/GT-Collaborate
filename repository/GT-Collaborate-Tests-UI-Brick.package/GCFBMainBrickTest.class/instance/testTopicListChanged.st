tests
testTopicListChanged
	brick filter subscribe: GCTopicListChanged do: [ :ann | results addLast: ann. semaphore signal ].
	self testSeachFieldBrickSetText.
	self denySemaphoreTimeout.