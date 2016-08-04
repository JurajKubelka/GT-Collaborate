tests
testMonitorAnnouncer
	self testMonitor.
	self assert: book monitor announcer == book announcer.
	self assert: book cases announcer == book announcer.