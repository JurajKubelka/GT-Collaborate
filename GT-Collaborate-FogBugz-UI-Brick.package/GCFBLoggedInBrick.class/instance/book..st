accessing
book: aGCFogBugzBook 
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := aGCFogBugzBook.
	aGCFogBugzBook
		subscribe: GCFBUpdateFinished send: #updateFinished to: self for: self.