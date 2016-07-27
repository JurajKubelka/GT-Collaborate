tests
testTopicUpdated
	| result |
	result := OrderedCollection new.
	self testUpdateCase.
	cases topics first subscribe: GCTopicUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCase.
	self assert: result isEmpty.