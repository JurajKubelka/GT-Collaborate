tests
testTopicAdded
	| result |
	result := OrderedCollection new.
	cases subscribe: GCTopicAdded do: [ :ann | result addLast: ann ].
	self testAddCase.
	self assert: result size equals: 1.
	self assert: result first topic == cases topics first.