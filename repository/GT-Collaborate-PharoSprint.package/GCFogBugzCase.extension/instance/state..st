*GT-Collaborate-PharoSprint
state: aGCSprintCaseState 
	| result |
	result := self rawState: aGCSprintCaseState.
	self announcer announce: (GCSprintLocalCaseStateChanged new 
		case: self;
		state: result;
		yourself).
	^ result