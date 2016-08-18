tests
testTextEmpty
	filter text: ''. 
	self assert: filter topics size equals: 3.