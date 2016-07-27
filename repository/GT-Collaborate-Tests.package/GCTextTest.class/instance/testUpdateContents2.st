tests
testUpdateContents2
	text when: GCContentsChanged send: #result: to: self.
	self testUpdateContents.
	self assert: result notNil.
	self assert: result class equals: GCContentsChanged.
	self assert: result actualValue equals: newText.
	self assert: result previousValue equals: oldText.