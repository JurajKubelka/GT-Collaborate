*GT-Collaborate-PharoSprint
asGCSprintState
	| developer newState |
	developer := GCSprintUser named: self developerId.
	newState := GCSprintCaseState fromStateId: self stateId.
	newState developer: developer.
	^ newState