topic selection
selectTopic: aTopic ui: aBrick
	| oldSelection |
	isSelecting := true.
	[ 	oldSelection := selectedTopic.
		selectedTopic := aTopic.
		self announceTopicSelectionChangedFrom: oldSelection to: aTopic ui: aBrick 
	] ensure: [ 
		isSelecting := false ].
