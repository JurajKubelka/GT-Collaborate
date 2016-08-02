instance creation
newListItemBrick
	^ GCTopicBrick new
			when: #onClicked do: [ :event :brick | self itemSelected: brick ];
			yourself