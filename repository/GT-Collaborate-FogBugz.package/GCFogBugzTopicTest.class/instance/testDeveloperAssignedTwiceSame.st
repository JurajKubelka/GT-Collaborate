tests
testDeveloperAssignedTwiceSame
	self testDeveloperAssigned.
	topic addDeveloperStatus: GCDeveloperStatus alice.
	self assertSemaphoreTimeout.
	self assert: results size equals: 1.
	self assert: results first class equals: GCDeveloperAssigned.