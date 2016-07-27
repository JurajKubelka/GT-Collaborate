tests
testSelectTopic
	text := self firstTopic contents text.
	self journalHolder selectTopic: self firstTopic ui: nil.
	self assert: journalBrick contentBrick text asString equals: text asString.
	self assert: self firstTopic contents text == text.