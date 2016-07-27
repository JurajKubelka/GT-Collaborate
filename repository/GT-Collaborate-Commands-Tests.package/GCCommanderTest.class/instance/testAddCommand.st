tests
testAddCommand
	commander commands: self; nextPutMessage: #addCommand:.
	self assert: commander commands == self.
	journal addTopic: GCTopic text.
	self assert: commands size equals: 1.