accessing
book: newBook
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := newBook.
	newBook 
		subscribe: GCFogBugzLogginFailed send: #loginFailed to: self for: self;
		subscribe: GCFogBugzNotLogged send: #loginFailed to: self for: self;
		subscribe: GCFogBugzLoggedIn send: #loggedIn to: self for: self;
		subscribe: GCFogBugzAlreadyLogged send: #loggedIn to: self for: self;
		yourself.
	self updateBricks.
