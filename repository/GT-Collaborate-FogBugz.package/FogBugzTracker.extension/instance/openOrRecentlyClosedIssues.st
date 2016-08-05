*GT-Collaborate-FogBugz
openOrRecentlyClosedIssues
	^ self getIssuesForQuery: 'status:open OR lastEdited:"this week"'