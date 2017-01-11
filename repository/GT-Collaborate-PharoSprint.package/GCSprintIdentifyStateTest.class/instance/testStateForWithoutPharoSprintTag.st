initialization
testStateForWithoutPharoSprintTag
	case := GCFogBugzExamples default case18482.
	state := identifier stateFor: case.
	self assert: state equals: GCSprintUndefinedCaseState default.