accessing
journalHolder: newJournal
	journalHolder ifNotNil: [ :oldJournal | oldJournal unsubscribe: self ].
	journalHolder := newJournal.
	newJournal subscribe: GCFogBugzAnnouncement send: #announce: to: self for: self.