accessing
engine: anObject
	engine ifNotNil: [ :anEngine | self unsubscribe: anEngine ].
	engine := anObject.
	anObject subscribeToJournal: self.