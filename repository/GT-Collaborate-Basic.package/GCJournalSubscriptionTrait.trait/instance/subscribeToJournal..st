subscription
subscribeToJournal: aGCJournal 
	aGCJournal 
		subscribe: GCTopicUpdated send: #topicContentsUpdated: to: self for: self;
		subscribe: GCTopicAdded send: #topicAdded: to: self for: self.