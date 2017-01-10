login
login
	queue addCommand: (GCFogBugzLoginCommand new
		announcer: self announcer;
		tracker: tracker;
		yourself)