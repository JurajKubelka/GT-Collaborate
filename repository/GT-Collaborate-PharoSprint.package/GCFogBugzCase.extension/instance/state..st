*GT-Collaborate-PharoSprint
state: aGCSprintCaseState 
	| result |
	result := self infoAt: #state put: aGCSprintCaseState.
	self announce: (GCSprintCaseStateChanged new 
		state: result;
		yourself).
	^ result