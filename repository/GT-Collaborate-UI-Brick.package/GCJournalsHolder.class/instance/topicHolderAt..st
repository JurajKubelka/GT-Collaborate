accessing - journals
topicHolderAt: anInteger 
	^ GCTopicHolder new journalHolder: self; topic: (self topicAt: anInteger); yourself