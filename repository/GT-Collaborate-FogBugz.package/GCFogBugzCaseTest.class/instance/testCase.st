tests-accessing
testCase
	| result |
	case when: GCFogBugzCaseUpdated do: [ :ann | result := ann ].
	case case: GCFBExamples default case18868.
	self assert: result class equals: GCFogBugzCaseUpdated.
	self assert: result topic equals: case.
