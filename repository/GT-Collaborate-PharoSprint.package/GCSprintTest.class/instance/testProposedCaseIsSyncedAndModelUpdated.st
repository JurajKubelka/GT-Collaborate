tests
testProposedCaseIsSyncedAndModelUpdated
	| case1 case2 |
	nodes newTwoClients; addThreeCases.
	case1 := nodes firstClientProposeCase.
	nodes syncTwoClients.
	case2 := nodes secondClient all detect: [ :eachCase | eachCase id = case1 id ].
	self assert: case2 isProposed.
