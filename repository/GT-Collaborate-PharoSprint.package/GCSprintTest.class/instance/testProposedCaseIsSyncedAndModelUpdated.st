tests
testProposedCaseIsSyncedAndModelUpdated
	case1 := local undefinedAndOpen first.
	case1 propose: local developer.
	case2 := remote all detect: [ :eachCase | eachCase id = case1 id ].
	self assert: case2 isProposed.