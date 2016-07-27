tests
testDeveloperAssignedTwice
	self testDeveloperAssigned.
	topic addDeveloperStatus: GCDeveloperStatus bob.
	self denySemaphoreTimeout.
	self assert: results size equals: 2.
	self assert: results first class equals: GCDeveloperAssigned.
	self assert: results second class equals: GCDeveloperAssigned.