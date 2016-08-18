tests
testSeachFieldBrickSetText
	brick searchFieldBrick text: 'update'.
	self assert: brick searchFieldBrick getText asString equals: 'update'.