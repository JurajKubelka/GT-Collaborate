accessing
stateFor: aFogBugzCase 
	aFogBugzCase hasPharoSprintTag ifTrue: [ ^ GCSprintProposedCaseState default ].
	^ GCSprintUndefinedCaseState default