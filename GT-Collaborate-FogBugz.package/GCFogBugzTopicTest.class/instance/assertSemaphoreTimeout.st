converting
assertSemaphoreTimeout
	self 
		assert: (semaphore waitTimeoutMSecs: 100) 
		description: 'Semaphore received signal, but SHOULD NOT.'