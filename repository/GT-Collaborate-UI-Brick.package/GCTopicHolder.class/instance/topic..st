accessing
topic: anObject
	topic ifNotNil: [ :aTopic | aTopic unsubscribe: self ].
	topic := anObject.
	anObject 
		subscribe: GCTopicTitleChanged send: #announce: to: self for: self;
		subscribe: GCDeveloperAnnouncement send: #announce: to: self for: self.