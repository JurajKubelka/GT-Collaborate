accessing
topicHolderAt: anInteger 
	^ GCTopicHolder new journalHolder: self journalsHolder; topic: (self filter book: self book topicAt: anInteger); yourself