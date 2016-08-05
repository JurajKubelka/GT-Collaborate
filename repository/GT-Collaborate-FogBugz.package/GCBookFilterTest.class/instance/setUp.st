running
setUp
	super setUp.
	book := self newBook.
	filter := self newFilter.
	filter book: book.