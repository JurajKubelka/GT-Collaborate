announcement handling
casesUpdated: aGCFogBugzCasesUpdated 
	"link with sprint object"
	aGCFogBugzCasesUpdated hasNewTopics ifTrue: [ 
		aGCFogBugzCasesUpdated newTopics do: [ :eachTopic | eachTopic sprint: self ] ].
	"update case states"
	self commands all isEmpty ifFalse: [ self updateCaseStates ].
