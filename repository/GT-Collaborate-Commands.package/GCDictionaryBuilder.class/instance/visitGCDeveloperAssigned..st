visitor
visitGCDeveloperAssigned: aGCDeveloperAssigned 
	^ Dictionary new
		at: #action put: aGCDeveloperAssigned actionName;
		at: #number put: aGCDeveloperAssigned topic id;
		at: #status put: aGCDeveloperAssigned developerStatus statusName;
		at: #author put: aGCDeveloperAssigned developerStatus author;
		at: #date put: DateAndTime now asString;
		yourself