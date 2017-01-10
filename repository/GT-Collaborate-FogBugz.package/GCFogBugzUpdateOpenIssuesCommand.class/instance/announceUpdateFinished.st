announcing
announceUpdateFinished
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: GCFogBugzUpdateFinished logCr ]