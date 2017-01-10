tests
testBasicAnnouncer
	self assert: cases announcer == book announcer.
	self assert: book monitor announcer == book announcer.