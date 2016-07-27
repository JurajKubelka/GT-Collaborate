tests
testUpdateContents
	topic updateContents: newText.
	self assert: topic contents text equals: newText