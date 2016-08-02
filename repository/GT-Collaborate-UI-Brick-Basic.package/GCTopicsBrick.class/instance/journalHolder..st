accessing
journalHolder: anObject
	journalHolder := anObject.
	anObject 
		subscribe: GCTopicAdded send: #topicAdded: to: self for: self.
	self updateBricks.