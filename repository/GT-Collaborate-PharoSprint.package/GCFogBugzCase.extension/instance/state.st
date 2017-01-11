*GT-Collaborate-PharoSprint
state
	^ self infoAt: #state ifAbsentPut: [ GCSprintUndefinedCaseState default ]