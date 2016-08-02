running
setUp
	super setUp.
	semaphore := Semaphore new.
	results := OrderedCollection new.
	cases := GCFogBugzCases new.
	book := GCFogBugzBook cases: cases monitor: GCFogBugzMonitor new.
	journals := GCJournals new.
	journals books: book asOrderedCollection.