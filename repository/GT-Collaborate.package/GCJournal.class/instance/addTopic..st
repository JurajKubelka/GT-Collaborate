adding
addTopic: aGCTopic
	| result |
	self topicId: aGCTopic id ifPresent: [ :aTopic | ^ aTopic ] ifAbsent: nil.
	self subscribeToTopic: aGCTopic.
	result := self topics addLast: aGCTopic.
	self announce: (GCTopicAdded topic: result).
	^ result.