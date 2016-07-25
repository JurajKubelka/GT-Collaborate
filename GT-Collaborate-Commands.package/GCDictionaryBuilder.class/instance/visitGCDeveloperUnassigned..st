visitor
visitGCDeveloperUnassigned: aGCDeveloperUnassigned 
	^ Dictionary new
		at: #action put: aGCDeveloperUnassigned actionName;
		at: #number put: aGCDeveloperUnassigned topic id;
		at: #status put: aGCDeveloperUnassigned developerStatus statusName;
		at: #author put: aGCDeveloperUnassigned developerStatus author;
		at: #date put: DateAndTime now asString;
		yourself