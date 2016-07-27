accessing
journalHolder: newJournal
	journalHolder ifNotNil: [ :oldJournal | oldJournal unsubscribe: self ].
	journalHolder := newJournal.
	newJournal subscribe: GCAnnouncement send: #announce: to: self for: self.