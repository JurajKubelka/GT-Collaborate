tests
testTopicUpdated2
	| result |
	result := OrderedCollection new.
	self testUpdateCase.
	cases topics first subscribe: GCTopicUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCaseTwice2.
	self assert: result isEmpty.