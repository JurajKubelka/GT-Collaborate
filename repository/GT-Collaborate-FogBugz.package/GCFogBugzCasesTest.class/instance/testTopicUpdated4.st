tests
testTopicUpdated4
	| result |
	result := OrderedCollection new.
	self testUpdateCase.
	cases topics first subscribe: GCTopicUpdated do: [ :ann | result addLast: ann ].
	self testUpdateCaseTwice4.
	self assert: result isEmpty.