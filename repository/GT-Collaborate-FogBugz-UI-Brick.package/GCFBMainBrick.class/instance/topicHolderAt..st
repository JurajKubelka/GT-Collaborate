as yet unclassified
topicHolderAt: anInteger 
	^ GCTopicHolder new journalHolder: self journalsHolder; topic: (self book topicAt: anInteger); yourself