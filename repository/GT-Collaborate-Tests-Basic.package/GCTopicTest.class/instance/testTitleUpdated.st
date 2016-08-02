tests
testTitleUpdated
	topic subscribe: GCTopicTitleChanged send: #result: to: self for: self.
	self testUpdateContents.
	self assert: topic title equals: newText.
	self assert: result notNil.
	self assert: result class equals: GCTopicTitleChanged