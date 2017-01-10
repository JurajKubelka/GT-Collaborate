actions
updateCases: aCommand
	self ensureLogged.
	queue addCommand: (aCommand
		announcer: self announcer;
		tracker: tracker;
		cases: cases;
		yourself)