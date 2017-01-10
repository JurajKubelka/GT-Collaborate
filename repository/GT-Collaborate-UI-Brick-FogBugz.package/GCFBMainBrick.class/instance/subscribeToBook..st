subscription
subscribeToBook: aBook
	aBook
"		subscribe: GCTopicAdded send: #topicAdded to: self for: self;
"		subscribe: GCFogBugzUpdateFinished send: #updateFinished to: self for: self;
		yourself.