tests
testAddMock
	| semaphore |
	semaphore := Semaphore new.
	queue := GCFogBugzCommandsQueue new.
	command := GCFBMockMonitorCommand new.
	command block: [ semaphore signal ].
	queue addCommand: command.
	self deny: (semaphore waitTimeoutMSecs: 100).