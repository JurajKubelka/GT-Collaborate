tests
testAddTopic
	| topic |
	topic := GCFogBugzTopic new case: case1a; yourself.
	cases addTopic: topic.
	self assert: cases size equals: 1.
	self assert: cases topics first id equals: topic id.
	self assert: cases topics first isTopic.
	self assert: cases topics first == topic.