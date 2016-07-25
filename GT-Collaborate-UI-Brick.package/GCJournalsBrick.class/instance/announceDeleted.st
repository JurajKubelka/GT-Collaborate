announcements
announceDeleted
	self journalHolder ifNotNil: [ :aJournalHolder | aJournalHolder stopAll ].
	super announceDeleted.