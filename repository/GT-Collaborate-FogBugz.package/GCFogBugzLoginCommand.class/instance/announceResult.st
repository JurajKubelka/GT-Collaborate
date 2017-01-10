announcing
announceResult
	self announcer ifNotNil: [ :anAnnouncer |
		tracker isLoggedIn
			ifTrue: [ anAnnouncer announce: GCFogBugzLoggedIn logCr ]
			ifFalse: [ anAnnouncer announce: GCFogBugzLogginFailed logCr ] ]