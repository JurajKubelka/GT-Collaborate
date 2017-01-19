tests
testProposedCaseIsInCommands
	"The first client should have one command in TrantorNode, ready for syncing."
	nodes newOneClient.
	nodes addThreeCases.
	self assert: nodes firstClient commands numberOfCommands equals: 0.
	nodes firstClientProposeCase.
	self assert: nodes firstClient commands numberOfCommands equals: 1