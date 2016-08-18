subscription
subscribeToFilter: aFilter
	aFilter
		subscribe: GCTopicListChanged send: #topicListChanged: to: self for: self;
		yourself.