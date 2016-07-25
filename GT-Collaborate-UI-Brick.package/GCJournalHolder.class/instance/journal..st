accessing
journal: anObject
	journal ifNotNil: [ :aJournal | aJournal unsubscribe: self. ].
	journal := anObject.
	self subscribeToJournal: anObject.