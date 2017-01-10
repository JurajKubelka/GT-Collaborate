tests
testUpdateContents2
	topic when: GCFogBugzCaseUpdated send: #result: to: self.
	self testUpdateContents.
	self assert: result notNil.
	self assert: result class equals: GCFogBugzCaseUpdated.
	self assert: result previousValue equals: oldText.
	self assert: result actualValue equals: newText.
	self assert: result topic == topic.