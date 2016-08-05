actions
updateCases: aCommand
	self ensureLogged.
	queue addCommand: (aCommand
		announcer: announcer;
		tracker: tracker;
		cases: cases;
		yourself)