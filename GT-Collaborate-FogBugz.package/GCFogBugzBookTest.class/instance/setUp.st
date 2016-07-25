running
setUp
	super setUp.
	semaphore := Semaphore new.
	results := OrderedCollection new.
	cases := GCFogBugzCases new.
	book := GCFogBugzBook cases: cases monitor: nil.
	journals := GCJournals new.
	journals books: book asOrderedCollection.