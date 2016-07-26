announcing
announceAlreadyLogged
	self announcer ifNotNil: [ :anAnnouncer |
		tracker isLoggedIn
			ifTrue: [ anAnnouncer announce: GCFBAlreadyLogged logCr ]
			ifFalse: [ anAnnouncer announce: GCFBLogginFailed logCr ] ]