tests
testUpdateTopic3
	self testUpdateTopic.
	self testSelectTopic2.
	self assert: self firstTopic contents text asString equals: text2 asString.
	self assert: self secondTopic contents text asString equals: text asString.