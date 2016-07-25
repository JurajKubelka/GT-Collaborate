running
setUp
	super setUp.
	results := OrderedCollection new.
	semaphore := Semaphore new.
	topic := GCFogBugzTopic case18763.