as yet unclassified
announceCommand: aDictionary 
	| announcement |
	announcement := GCFogBugzAnnouncement instantiateActionName: (aDictionary at: #action).
	self flag: #toBeRemoved.