as yet unclassified
state
	^ self infoAt: #state ifAbsentPut: [ GCSprintUndefinedCaseState default ]