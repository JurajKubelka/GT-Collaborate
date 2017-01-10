accessing
book: aGCFogBugzBook 
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := aGCFogBugzBook.
	aGCFogBugzBook
		subscribe: GCFogBugzUpdateFinished send: #updateFinished to: self for: self;
		subscribe: GCFogBugzNetworkError send: #networkError: to: self for: self.