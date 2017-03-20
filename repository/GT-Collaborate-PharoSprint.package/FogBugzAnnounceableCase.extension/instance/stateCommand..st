*GT-Collaborate-PharoSprint
stateCommand: aGCSprintCaseStateChangeCommand 
	"Return true if a state is changed."
	| newState |
	(self state stateId = aGCSprintCaseStateChangeCommand stateId and: [ 
		self state developer name = aGCSprintCaseStateChangeCommand developerId ]) ifTrue: [ ^ false ].
	newState := aGCSprintCaseStateChangeCommand asGCSprintState.
	self rawState: newState.
	^ true