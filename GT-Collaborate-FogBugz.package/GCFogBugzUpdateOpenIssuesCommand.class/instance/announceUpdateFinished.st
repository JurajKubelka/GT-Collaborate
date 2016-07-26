announcing
announceUpdateFinished
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: GCFBUpdateFinished logCr ]