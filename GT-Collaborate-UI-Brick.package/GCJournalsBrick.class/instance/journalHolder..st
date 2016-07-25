accessing
journalHolder: anObject
	journalHolder ifNotNil: [ :oldJournalHolder | oldJournalHolder stopEngines ].
	journalHolder := anObject.
	anObject startEngines.
	self updateBricks.
