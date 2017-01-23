tests
testIsMyStateNo
	| state |
	state := GCSprintCaseState developer: (GCSprintUser pedro).
	self deny: (sprint isMyState: state) description: 'Pedro has created the state.'
	