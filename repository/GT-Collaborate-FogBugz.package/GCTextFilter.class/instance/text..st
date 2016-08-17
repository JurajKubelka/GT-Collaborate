accessing
text: anObject
	text = anObject ifTrue: [ ^ self ].
	text := anObject.
	self refreshTopics.
	self announce: GCTopicListChanged.