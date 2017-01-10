tests
testCasesAnnouncer
	self testCases.
	self assert: book cases announcer == book announcer.
	self assert: book monitor announcer == book announcer.