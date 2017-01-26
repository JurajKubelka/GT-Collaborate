tests
testReceiveFirstCaseStatesThenCases
	| case1 case2 |
	"Do not test it for now, because Trantor framework is problematic for testing,
	and I am about to replace it with MQTT framework"
	true ifTrue: [ ^ self ].
	nodes newTwoClients.
	nodes addThreeCases: nodes firstClient.
	case1 := nodes firstClientProposeCase.
	nodes syncTwoClients.
	nodes addThreeCases: nodes secondClient.
	case2 := nodes secondClient all detect: [ :eachCase | eachCase id = case1 id ].
	self assert: case2 isProposed.
