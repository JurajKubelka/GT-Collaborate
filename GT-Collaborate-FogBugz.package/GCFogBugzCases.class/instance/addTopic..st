adding
addTopic: aFogBugzTopic
	| result |
	mutex critical: [ 
		result := collection addLast: aFogBugzTopic ].
	result subscribe: GCAnnouncement send: #announce: to: self for: self.
	self announce: (GCTopicAdded new topic: result; yourself).
	^ result