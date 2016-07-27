accessing
book: newBook
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := newBook.
	newBook 
		subscribe: GCFBLogginFailed send: #loginFailed to: self for: self;
		subscribe: GCFBNotLogged send: #loginFailed to: self for: self;
		subscribe: GCFBLoggedIn send: #loggedIn to: self for: self;
		subscribe: GCFBAlreadyLogged send: #loggedIn to: self for: self;
		yourself.
	self updateBricks.
