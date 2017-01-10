subscription
subscribeToBook: aBook
	aBook
		subscribe: GCFogBugzUpdateFinished send: #updateFinished to: self for: self;
		yourself.