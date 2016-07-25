accessing
journalHolder: anObject
	journalHolder ifNotNil: [ :aJournal | aJournal unsubscribe: self ].
	journalHolder := anObject.
	self updateBricks.