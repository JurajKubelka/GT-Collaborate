adding
addTopic: aGCFogBugzCase
	| result |
	mutex critical: [ 
		result := collection addLast: aGCFogBugzCase ].
	result subscribe: GCFogBugzAnnouncement send: #announce: to: self for: self.
	self announce: (GCFogBugzCaseAdded new topic: result; yourself).
	^ result