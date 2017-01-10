announce
announce: anAnnouncement 
	^ announcer ifNotNil: [ :anAnnouncer |
		anAnnouncer announce: anAnnouncement ]