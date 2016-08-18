accessing
filteredTopicHolderAt: anInteger 
	^ GCTopicHolder new journalHolder: self journalsHolder; topic: (self filter topicAt: anInteger); yourself