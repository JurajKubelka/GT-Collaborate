tests
testNewTopicAdded
	self assert: (self newTopicAdded title includesSubstring: self substringOf18482 caseSensitive: false)