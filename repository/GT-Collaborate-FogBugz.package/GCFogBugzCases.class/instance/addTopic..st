adding
addTopic: aFogBugzTopic
	| result |
	mutex critical: [ 
		result := collection addLast: aFogBugzTopic ].
	result subscribe: GCFogBugzAnnouncement send: #announce: to: self for: self.
	self announce: (GCFogBugzCaseAdded new topic: result; yourself).
	^ result