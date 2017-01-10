running
setUp
	super setUp.
	results := OrderedCollection new.
	semaphore := Semaphore new.
	topic := GCFogBugzTopicObsolete case18763.