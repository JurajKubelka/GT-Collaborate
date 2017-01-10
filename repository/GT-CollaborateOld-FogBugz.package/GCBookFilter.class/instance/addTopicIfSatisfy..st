adding
addTopicIfSatisfy: aTopic
	^ (self isSatisfying: aTopic)
		ifTrue: [ self addTopic: aTopic ]
		ifFalse: nil