accessing
books
	books ifNil: [ self books: self allAvailableBooks ].
	^ books