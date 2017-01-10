tests
testMonitor
	monitor := GCFogBugz new.
	book monitor: monitor.
	self assert: book monitor == monitor.
	self assert: book monitor cases == book cases.