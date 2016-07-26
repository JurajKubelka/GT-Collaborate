login
login
	queue addCommand: (GCFogBugzLoginCommand new
		announcer: announcer;
		tracker: tracker;
		yourself)