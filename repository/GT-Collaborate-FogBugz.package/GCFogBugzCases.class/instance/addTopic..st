adding
addTopic: aGCFogBugzCase
	| result |
	result := self rawAddTopic: aGCFogBugzCase.
	result subscribe: GCFogBugzAnnouncement send: #announce: to: self for: self.
	self announce: (GCFogBugzCaseAdded new topic: result; yourself).
	^ result