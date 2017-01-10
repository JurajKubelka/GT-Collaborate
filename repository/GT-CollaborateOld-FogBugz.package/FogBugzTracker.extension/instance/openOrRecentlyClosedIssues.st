*GT-CollaborateOld-FogBugz
openOrRecentlyClosedIssues
	^ self getIssuesForQuery: 'status:open OR lastEdited:"this week"'