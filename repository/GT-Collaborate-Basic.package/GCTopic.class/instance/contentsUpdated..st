announcement handling
contentsUpdated: aGCContentsChanged 
	self announce: (GCFogBugzCaseUpdated topic: self fromChange: aGCContentsChanged).
	self announce: (GCTopicTitleChanged new topic: self).