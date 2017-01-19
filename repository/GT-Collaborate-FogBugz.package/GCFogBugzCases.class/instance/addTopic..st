private
addTopic: aGCFogBugzCase
	| result |
	result := mutex critical: [ collection addLast: aGCFogBugzCase ].
	result subscribe: GCFogBugzAnnouncement send: #announce: to: self for: self.
	^ result
	
