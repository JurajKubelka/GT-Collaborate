tests
testIsSelected
	self deny: (journalHolder isSelected: topicHolder1 topic).
	self deny: topicHolder1 isSelected.