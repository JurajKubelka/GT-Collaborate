tests
testTextCaseInsensitive2
	filter text: 'Update' asText.
	self assert: filter topics size equals: 1.