adding
addTopic: aTopic
	| result |
	mutex critical: [ result := self topics addLast: aTopic ].
	self announce: (GCTopicAdded new topic: result; yourself).
	^ result.