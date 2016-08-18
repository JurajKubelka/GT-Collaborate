tests
testTextCaseInsensitive
	filter text: 'Update'.
	self assert: filter topics size equals: 1.