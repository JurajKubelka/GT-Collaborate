subscription
subscribeToJournal: aGCJournal 
	aGCJournal 
		subscribe: GCTopicUpdated send: #result: to: self for: self;
		subscribe: GCTopicAdded send: #result: to: self for: self.