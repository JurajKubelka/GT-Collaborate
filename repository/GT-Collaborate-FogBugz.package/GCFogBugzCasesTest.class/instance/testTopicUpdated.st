tests
testTopicUpdated
	"a topic should not be updated because of the same case"
	| result |
	result := OrderedCollection new.
	self testUpdateCase.
	cases topics first subscribe: GCFogBugzCaseUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCase.
	self assert: result isEmpty.