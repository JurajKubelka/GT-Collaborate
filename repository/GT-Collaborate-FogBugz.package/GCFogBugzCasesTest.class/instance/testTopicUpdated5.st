tests
testTopicUpdated5
	| result |
	result := OrderedCollection new.
	self testUpdateCase.
	cases subscribe: GCFogBugzCaseUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCaseTwice3.
	self assert: result size equals: 1.
	self assert: result first topic == cases topics first.