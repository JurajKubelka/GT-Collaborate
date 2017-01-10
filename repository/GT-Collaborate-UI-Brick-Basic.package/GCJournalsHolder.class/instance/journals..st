accessing
journals: newJournal
	journals ifNotNil: [ :oldJournal | oldJournal unsubscribe: self ].
	journals := newJournal.
	newJournal subscribe: GCFogBugzAnnouncement send: #announce: to: self for: self.