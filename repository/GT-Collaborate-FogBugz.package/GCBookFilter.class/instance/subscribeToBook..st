subscription
subscribeToBook: anObject
	anObject subscribe: GCTopicAdded send: #topicAdded: to: self for: self
