tests
testUpdateContents
	text updateContents: newText.
	self assert: text text equals: newText.
	