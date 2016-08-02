event handling
itemSelected: aBrick
	self journalHolder selectTopic: aBrick topic ui: aBrick.
	aBrick check.
	self updateSelections.