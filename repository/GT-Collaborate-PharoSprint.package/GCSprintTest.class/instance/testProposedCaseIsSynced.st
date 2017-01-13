tests
testProposedCaseIsSynced
	| command |
	self assert: remote commands numberOfCommands equals: 0.
	self testProposedCaseIsInCommands.
	400 milliSeconds wait.
	self assert: remote commands numberOfCommands equals: 1.
	command := remote commands all first.
	self assert: command caseId equals: 18763.
	self assert: command stateId equals: #proposed.
	self assert: command developerId equals: 'Alice Sanches'.