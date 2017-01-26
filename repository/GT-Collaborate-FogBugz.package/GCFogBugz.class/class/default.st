cleanup
default
	^ self uniqueInstance
		subscribeHooks;
		yourself