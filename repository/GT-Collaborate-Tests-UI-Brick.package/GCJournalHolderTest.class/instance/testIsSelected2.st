tests
testIsSelected2
	journalHolder selectTopic: self firstTopic ui: nil.
	self assert: (journalHolder isSelected: self firstTopic).