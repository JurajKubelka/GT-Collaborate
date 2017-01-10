subscription
subscribeToJournal: aGCJournal 
	aGCJournal 
		subscribe: GCFogBugzCaseUpdated send: #result: to: self for: self;
		subscribe: GCFogBugzCaseAdded send: #result: to: self for: self.