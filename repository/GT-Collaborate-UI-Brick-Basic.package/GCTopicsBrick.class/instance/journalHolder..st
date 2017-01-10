accessing
journalHolder: anObject
	journalHolder := anObject.
	anObject 
		subscribe: GCFogBugzCaseAdded send: #topicAdded: to: self for: self.
	self updateBricks.