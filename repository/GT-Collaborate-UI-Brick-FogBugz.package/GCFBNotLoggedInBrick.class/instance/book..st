accessing
book: aGCFogBugzBook 
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := aGCFogBugzBook.
	aGCFogBugzBook 
		subscribe: GCFogBugzLogginFailed send: #loginFailed to: self for: self;
		subscribe: GCFogBugzLoggedIn send: #loggedIn to: self for: self;
		subscribe: GCFogBugzNetworkError send: #networkError: to: self for: self;
		yourself.
	self updateBricks.