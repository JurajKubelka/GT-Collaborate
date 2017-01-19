tests
testProposedCaseIsSynced
	| command |
	nodes newTwoClients; addThreeCases.
	self assert: nodes secondClient commands numberOfCommands equals: 0.
	nodes firstClientProposeCase.
	nodes syncTwoClients.
	self assert: nodes secondClient commands numberOfCommands equals: 1.
	command := nodes secondClient commands all first.
	self assert: command caseId equals: 18763.
	self assert: command stateId equals: #proposed.
	self assert: command developerId equals: 'Client #1'.