tests
testIsSelected2
	journalHolder selectTopic: topicHolder1 topic ui: nil.
	self assert: (journalHolder isSelected: topicHolder1 topic).
	self assert: topicHolder1 isSelected.