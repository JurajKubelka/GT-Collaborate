tests
testTopicAdded3
	| result |
	result := OrderedCollection new.
	cases announcer subscribe: GCTopicAdded do: [ :ann | result addLast: ann ].
	self testUpdateCase.
	self assert: result size equals: 1.
	self assert: result first topic == cases topics first.