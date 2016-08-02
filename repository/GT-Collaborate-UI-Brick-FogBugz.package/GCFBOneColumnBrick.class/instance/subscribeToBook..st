subscription
subscribeToBook: aBook
	aBook
		subscribe: GCFBUpdateFinished send: #updateFinished to: self for: self;
		yourself.