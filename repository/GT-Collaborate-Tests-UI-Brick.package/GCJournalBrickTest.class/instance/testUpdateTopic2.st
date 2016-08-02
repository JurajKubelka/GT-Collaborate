tests
testUpdateTopic2
	text2 := 'new text' asText.
	self testSelectTopic2.
	journalBrick contentBrick text: text2.
	self assert: journalBrick contentBrick text asString equals: text2 asString.
	self assert: self secondTopic contents text equals: text2.