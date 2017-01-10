accessing
book: anObject
	book ifNotNil: [ :oldBook | oldBook unsubscribe: self ].
	book := anObject.
	self subscribeToBook: anObject.
	self updateTopics.