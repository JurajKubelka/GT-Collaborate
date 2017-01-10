subscription
subscribeToJournal: aGCJournal 
	aGCJournal 
		subscribe: GCFogBugzCaseUpdated send: #topicContentsUpdated: to: self for: self;
		subscribe: GCFogBugzCaseAdded send: #topicAdded: to: self for: self.