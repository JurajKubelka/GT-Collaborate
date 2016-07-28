accessing
topicHolderAt: anInteger 
	^ GCTopicHolder new journalHolder: self journalsHolder; topic: (self book topicAt: anInteger); yourself