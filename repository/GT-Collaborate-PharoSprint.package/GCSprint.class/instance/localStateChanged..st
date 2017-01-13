announcement handling
localStateChanged: aGCSprintLocalCaseStatesChanged 
	self commands ifNotNil: [ :aCommands | 
		aCommands localStateChanged: aGCSprintLocalCaseStatesChanged ].