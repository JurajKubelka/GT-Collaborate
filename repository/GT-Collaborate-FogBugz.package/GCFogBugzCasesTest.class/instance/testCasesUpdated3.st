tests
testCasesUpdated3
	"update a case"
	| result |
	result := OrderedCollection new.
	cases subscribe: GCFogBugzCaseAdded do: [ :ann | result addLast: ann ].
	cases subscribe: GCFogBugzCaseUpdated do: [ :ann | result addLast: ann ].
	cases subscribe: GCFogBugzCasesUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCases3.
	self assert: result size equals: 1.
	self assert: result first class equals: GCFogBugzCasesUpdated.
	self assert: result first topics size equals: 2.
	self assert: result first topics first == cases topics first.
	self assert: result first topics second == cases topics second.