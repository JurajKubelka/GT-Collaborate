tests
testListBrickFilteredItems
	brick searchFieldBrick text: 'pr'.
	self assert: brick listBrick band subbricks first topicHolder id equals: 18846