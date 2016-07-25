asserting
waitObjectChangedSemaphore
	self deny: (objectChangedSemaphore waitTimeoutMSecs: 100).