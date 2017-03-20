*GT-Collaborate-PharoSprint
state
	^ self infoAt: #state ifAbsentPut: [ GCSprintIdentifyState default stateFor: self case ]