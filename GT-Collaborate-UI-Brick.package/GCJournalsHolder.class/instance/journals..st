accessing
journals: newJournal
	journals ifNotNil: [ :oldJournal | oldJournal unsubscribe: self ].
	journals := newJournal.
	newJournal subscribe: GCAnnouncement send: #announce: to: self for: self.