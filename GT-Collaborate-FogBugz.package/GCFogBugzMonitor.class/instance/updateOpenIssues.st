actions
updateOpenIssues
	self ensureLogged.
	queue addCommand: (GCFogBugzUpdateOpenIssuesCommand new
		announcer: announcer;
		tracker: tracker;
		cases: cases;
		yourself)