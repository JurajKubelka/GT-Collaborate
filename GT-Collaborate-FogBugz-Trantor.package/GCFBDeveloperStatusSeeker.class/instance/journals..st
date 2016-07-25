accessing
journals: newJournals
	journals ifNotNil: [ :oldJournals | oldJournals unsubscribe: self ].
	journals := newJournals.
	newJournals 
		subscribe: GCDeveloperAssigned send: #assigned: to: self for: self;
		subscribe: GCDeveloperUnassigned send: #unssigned: to: self for: self.