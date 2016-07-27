running
setUp
	super setUp.
	journalBrick := GCJournalBrick loremIpsum.
	journalBrick extent: 400 @ 400.