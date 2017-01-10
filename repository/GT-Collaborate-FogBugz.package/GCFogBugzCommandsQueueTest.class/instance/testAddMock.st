tests
testAddMock
	| semaphore |
	semaphore := Semaphore new.
	queue := GCFogBugzCommandsQueue new.
	command := GCFogBugzMockCommand new.
	command block: [ semaphore signal ].
	queue addCommand: command.
	self deny: (semaphore waitTimeoutMSecs: 100).