as yet unclassified
state
	^ self infoAt: #state ifAbsentPut: [ GCSprintIdentifyState default stateFor: self case ]