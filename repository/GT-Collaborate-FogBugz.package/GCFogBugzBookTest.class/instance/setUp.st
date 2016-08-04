running
setUp
	super setUp.
	semaphore := Semaphore new.
	results := OrderedCollection new.	
	book := GCFogBugzBook new.
	cases := book cases.
	monitor := book monitor.
	journals := GCJournals new.
	journals books: book asOrderedCollection.