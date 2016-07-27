update
updateSelectedTopic: aText 
	isSelecting ifTrue: [ ^ self ].
	selectedTopic updateContents: aText