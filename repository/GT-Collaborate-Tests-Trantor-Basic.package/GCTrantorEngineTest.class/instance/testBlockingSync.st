tests
testBlockingSync
	self waitObjectAddedSemaphore.
	self assert: trantor node objectIds notEmpty.
	self assert: trantor object notNil.
	self assert: trantor object isTrantorObject. 