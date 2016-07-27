update
showTopicActions
	self developersBrick updatePlusBrickVisibility.
	actionBricks do: [ :each | each visible: true ].
	self addAlarm: #showDetails after: 400