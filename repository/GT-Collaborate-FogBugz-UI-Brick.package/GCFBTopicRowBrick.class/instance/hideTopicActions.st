update
hideTopicActions
	self developersBrick hidePlusBrick.
	actionBricks do: [ :each | each visible: false ]