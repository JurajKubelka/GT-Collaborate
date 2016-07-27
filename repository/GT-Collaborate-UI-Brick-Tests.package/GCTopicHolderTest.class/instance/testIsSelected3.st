tests
testIsSelected3
	journalHolder selectTopic: topicHolder1 topic ui: nil.
	self deny: (journalHolder isSelected: topicHolder2 topic).
	self deny: topicHolder2 isSelected.