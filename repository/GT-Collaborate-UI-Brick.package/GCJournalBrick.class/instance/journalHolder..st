accessing
journalHolder: anObject
	journalHolder ifNotNil: [ :aJournal | aJournal unsubscribe: self ].
	journalHolder := anObject.
	anObject 
		subscribe: GCTopicSelectionChanged send: #selectTopic: to: self for: self.
	self updateBricks.