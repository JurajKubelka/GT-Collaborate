tests
testProposedCaseIsInCommands
	self assert: local commands numberOfCommands equals: 0.
	case1 := local undefinedAndOpen first.
	case1 propose: local developer.
	self assert: local commands numberOfCommands equals: 1