tests
testDeveloperUnassigned
	self testDeveloperAssigned.
	topic subscribe: GCDeveloperUnassigned do: [ :ann | results add: ann. semaphore signal ].
	topic removeDeveloperStatus: GCDeveloperStatus alice.
	self denySemaphoreTimeout.
	self assert: results size equals: 2.
	self assert: results first class equals: GCDeveloperAssigned.
	self assert: results second class equals: GCDeveloperUnassigned.