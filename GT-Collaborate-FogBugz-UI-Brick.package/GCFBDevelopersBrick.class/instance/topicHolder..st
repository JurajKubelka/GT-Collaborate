accessing
topicHolder: newTopicHolder
	topicHolder ifNotNil: [ :oldTaskHolder | oldTaskHolder unsubscribe: self ].
	topicHolder := newTopicHolder.
	newTopicHolder 
		subscribe: GCDeveloperAnnouncement send: #updateDeveloperBricks to: self for: self.
	self updateDeveloperBricks