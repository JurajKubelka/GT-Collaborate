tests
testDeveloperUnassigned2
	topic subscribe: GCDeveloperUnassigned do: [ :ann | results add: ann. semaphore signal ].
	topic removeDeveloperStatus: GCDeveloperStatus alice.
	self assertSemaphoreTimeout.
	self assert: results size equals: 0.