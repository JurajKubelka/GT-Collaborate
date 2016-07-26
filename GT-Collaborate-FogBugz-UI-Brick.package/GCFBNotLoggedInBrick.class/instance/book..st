accessing
book: aGCFogBugzBook 
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := aGCFogBugzBook.
	aGCFogBugzBook 
		subscribe: GCFBLogginFailed send: #loginFailed to: self for: self;
		subscribe: GCFBLoggedIn send: #loggedIn to: self for: self;
		subscribe: GCFBNetworkError send: #networkError: to: self for: self;
		yourself.
	self updateBricks.