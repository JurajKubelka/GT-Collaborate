announcement handling
casesUpdated: aGCFogBugzCasesUpdated 
	self commands all isEmpty ifTrue: [ ^ self ].
	self updateCaseStates.
"	self commands all isEmpty ifTrue: [ ^ self ].
	aGCFogBugzCasesUpdated newTopics do: [ :eachTopic |
		 ]"