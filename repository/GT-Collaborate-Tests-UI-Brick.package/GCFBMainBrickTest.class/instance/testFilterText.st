tests
testFilterText
	self testSeachFieldBrickSetText.
	self assert: brick filter text asString equals: 'update'.