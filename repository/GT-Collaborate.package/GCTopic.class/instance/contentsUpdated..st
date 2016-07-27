announcement handling
contentsUpdated: aGCContentsChanged 
	self announce: (GCTopicUpdated topic: self fromChange: aGCContentsChanged).
	self announce: (GCTopicTitleChanged new topic: self).