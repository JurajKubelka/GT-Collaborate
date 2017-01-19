tests
testProposedCaseIsInCommands
	nodes newOneClient.
	nodes addThreeCases.
	self assert: nodes firstClient commands numberOfCommands equals: 0.
	nodes firstClientProposeCase.
	self assert: nodes firstClient commands numberOfCommands equals: 1