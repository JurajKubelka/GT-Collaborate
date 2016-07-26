announcing
announceNetworkError: aConnectionTimedOut 
	self announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: (GCFBNetworkError new exception: aConnectionTimedOut; yourself) logCr ]