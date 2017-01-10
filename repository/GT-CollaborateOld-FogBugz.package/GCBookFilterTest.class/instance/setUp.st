running
setUp
	super setUp.
	semaphore := Semaphore new.
	results := OrderedCollection new.	
	book := self newBook.
	cases := book cases.
	filter := self newFilter.
	filter book: book.
