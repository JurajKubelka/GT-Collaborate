tests
testListBrick
	self assert: brick listBrick hasItems. 
	self assert: brick listBrick band subbricksCount equals: 3.