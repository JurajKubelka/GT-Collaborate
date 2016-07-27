running
setUp
	super setUp.
	journalHolder := GCJournalHolder loremIpsum.
	topicHolder1 := journalHolder topicHolderAt: 1.
	topicHolder2 := journalHolder topicHolderAt: 2.
	