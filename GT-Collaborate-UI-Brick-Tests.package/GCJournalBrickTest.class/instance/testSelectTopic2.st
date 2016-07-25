tests
testSelectTopic2
	text := self secondTopic contents text.
	self journalHolder selectTopic: self secondTopic ui: nil.
	self assert: journalBrick contentBrick text asString equals: text asString.
	self assert: self secondTopic contents text == text.