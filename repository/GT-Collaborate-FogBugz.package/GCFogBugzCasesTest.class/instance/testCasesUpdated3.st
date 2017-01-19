tests
testCasesUpdated3
	"update a case"
	| result |
	result := OrderedCollection new.
	cases subscribe: GCFogBugzCasesUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCases3.
	self assert: result size equals: 1.
	self assert: result first class equals: GCFogBugzCasesUpdated.
	self assert: result first newTopics size equals: 2.
	self assert: result first newTopics first == cases topics first.
	self assert: result first newTopics second == cases topics second.