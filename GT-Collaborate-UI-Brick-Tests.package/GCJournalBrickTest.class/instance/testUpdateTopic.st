tests
testUpdateTopic
	text2 := 'new text' asText.
	self testSelectTopic.
	journalBrick contentBrick text: text2.
	self assert: journalBrick contentBrick text asString equals: text2 asString.
	self assert: self firstTopic contents text equals: text2.