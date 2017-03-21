tests-accessing
testCase
	| result |
	case announcer when: FogBugzCaseUpdatedAnnouncement do: [ :ann | result := ann ].
	case case: FogBugzExamples case18868.
	self assert: result class equals: FogBugzCaseUpdatedAnnouncement.
	self assert: result topic equals: case.
