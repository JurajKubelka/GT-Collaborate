update
updateSelections
	self listBrick band submorphsDo: [ :each | each check: each topicHolder isSelected ]