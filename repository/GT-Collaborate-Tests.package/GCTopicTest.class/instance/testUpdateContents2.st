tests
testUpdateContents2
	topic when: GCTopicUpdated send: #result: to: self.
	self testUpdateContents.
	self assert: result notNil.
	self assert: result class equals: GCTopicUpdated.
	self assert: result previousValue equals: oldText.
	self assert: result actualValue equals: newText.
	self assert: result topic == topic.