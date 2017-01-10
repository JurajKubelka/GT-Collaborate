announcing
announceAlreadyLogged
	self announcer ifNotNil: [ :anAnnouncer |
			anAnnouncer announce: GCFogBugzAlreadyLogged logCr ]