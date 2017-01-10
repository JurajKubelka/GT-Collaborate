adding
addTopic: aTopic
	| result |
	mutex critical: [ result := topics addLast: aTopic ].
	self announce: (GCFogBugzCaseAdded new topic: result; yourself).
	^ result.