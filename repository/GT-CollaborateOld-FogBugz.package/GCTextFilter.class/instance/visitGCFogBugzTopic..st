visitor
visitGCFogBugzTopic: aGCFogBugzTopic 
	^ (self includesSubstring: aGCFogBugzTopic title) or: [ 
		self includesSubstring: aGCFogBugzTopic id printString ]