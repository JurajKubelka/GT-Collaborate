accessing
book: newBook 
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := newBook.
	filter book: newBook.
	self subscribeToBook: newBook.
	self updateBricks.