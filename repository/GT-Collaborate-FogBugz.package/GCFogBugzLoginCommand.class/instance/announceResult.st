announcing
announceResult
	self announcer ifNotNil: [ :anAnnouncer |
		tracker isLoggedIn
			ifTrue: [ anAnnouncer announce: GCFBLoggedIn logCr ]
			ifFalse: [ anAnnouncer announce: GCFBLogginFailed logCr ] ]