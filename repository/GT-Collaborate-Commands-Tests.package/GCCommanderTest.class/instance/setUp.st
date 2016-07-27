running
setUp
	super setUp.
	self setUpBasicJournal.
	commander := GCCommander new.
	commander subscribeToJournal: journal.
	commands := OrderedCollection new.