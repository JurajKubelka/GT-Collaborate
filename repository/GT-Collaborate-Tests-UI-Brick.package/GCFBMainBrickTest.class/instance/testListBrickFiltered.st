tests
testListBrickFiltered
	self testSeachFieldBrickSetText.
	self assert: brick listBrick hasItems. 
	self assert: brick listBrick band subbricksCount equals: 1.