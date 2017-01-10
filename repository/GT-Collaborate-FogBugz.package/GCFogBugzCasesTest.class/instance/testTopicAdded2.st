tests
testTopicAdded2
	| result |
	result := OrderedCollection new.
	cases announcer subscribe: GCFogBugzCaseAdded do: [ :ann | result addLast: ann ].
	self testAddTopic.
	self assert: result size equals: 1.
	self assert: result first topic == cases topics first.