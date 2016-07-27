asserting
waitObjectAddedSemaphore
	self deny: (objectAddedSemaphore waitTimeoutMSecs: 100).