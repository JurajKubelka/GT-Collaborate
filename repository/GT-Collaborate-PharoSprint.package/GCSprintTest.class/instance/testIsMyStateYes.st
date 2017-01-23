tests
testIsMyStateYes
	| state |
	state := GCSprintCaseState developer: (GCSprintUser alice).
	self assert: (sprint isMyState: state) description: 'Alice has created the state.'
	