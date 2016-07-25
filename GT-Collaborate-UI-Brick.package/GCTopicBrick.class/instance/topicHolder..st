accessing
topicHolder: anObject
	topicHolder ifNotNil: [ :aTopicHolder | aTopicHolder unsubscribe: self ].
	topicHolder := anObject.
	anObject subscribe: GCTopicTitleChanged send: #titleChanged: to: self for: self.
	self updateBricks.