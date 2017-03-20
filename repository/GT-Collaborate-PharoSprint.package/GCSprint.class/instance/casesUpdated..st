announcement handling
casesUpdated: aGCFogBugzCasesUpdated 
	"link with sprint object"
	aGCFogBugzCasesUpdated hasNewCases ifTrue: [ 
		aGCFogBugzCasesUpdated newCases do: [ :eachTopic | eachTopic sprint: self ] ].
	"update case states"
	self commands all isEmpty ifFalse: [ self updateCaseStates ].
