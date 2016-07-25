accessing
books: newCollectionOfBooks
	books ifNotNil: [ :oldBooks | self unsubscribeFromBooks: oldBooks ].
	books := newCollectionOfBooks.
	newCollectionOfBooks do: [ :each | each subscribeJournals: self ].