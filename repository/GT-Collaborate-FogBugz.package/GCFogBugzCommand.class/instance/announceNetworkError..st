announcing
announceNetworkError: aConnectionTimedOut 
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: (GCFogBugzNetworkError new exception: aConnectionTimedOut; yourself) logCr ]