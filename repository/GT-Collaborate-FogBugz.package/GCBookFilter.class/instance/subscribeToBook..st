subscription
subscribeToBook: anObject
	anObject 
		subscribe: GCTopicAdded send: #topicAdded: to: self for: self;
		subscribe: GCFogBugzNetworkAnnouncement send: #announce: to: self for: self;
		yourself