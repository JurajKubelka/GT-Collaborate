tests
testCasesUpdated
	"add new case"
	| result |
	result := OrderedCollection new.
	cases subscribe: GCFogBugzCasesUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCases.
	self assert: result size equals: 1.
	self assert: result first class equals: GCFogBugzCasesUpdated.
	self assert: result first newTopics size equals: 1.
	self assert: result first newTopics first == cases topics first.