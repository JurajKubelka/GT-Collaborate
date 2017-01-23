tests
testAddProposed
	"Check that local changes are propagated to the remote client."
	state := GCSprintCaseStateChangeCommand new.
	state caseId: 1234; stateId: GCSprintProposedCaseState stateId; developerId: #user1.
	local add: state.
	local sync.
	300 milliSeconds wait.
	self assert: remote size equals: 1.