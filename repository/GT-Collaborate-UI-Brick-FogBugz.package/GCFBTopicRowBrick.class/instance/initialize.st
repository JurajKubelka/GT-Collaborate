initialization
initialize
	super initialize.
	self theme collaborateWidgetThemer topicStyleFor: self.
	self caseBrick: self newIssueBrick.
	self composedBrick: self newComposedBrick.
	self statusBrick: self newStatusBrick.
	self developersBrick: self newDevelopersBrick.
	self initializeActions.
	self enable.
	self
		when: #onMouseHover do: [ self showTopicActions ];
		when: #onMouseUnhover do: [ self hideTopicActions ].