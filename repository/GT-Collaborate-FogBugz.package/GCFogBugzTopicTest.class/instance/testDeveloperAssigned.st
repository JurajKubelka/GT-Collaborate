tests
testDeveloperAssigned
	topic subscribe: GCDeveloperAssigned do: [ :ann | results add: ann. semaphore signal ].
	topic addDeveloperStatus: GCDeveloperStatus alice.
	self denySemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCDeveloperAssigned.