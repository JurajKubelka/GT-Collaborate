actions
updateOpenIssues
	self login.
	queue addCommand: (GCFogBugzUpdateOpenIssuesCommand new
		tracker: tracker;
		cases: cases;
		yourself)