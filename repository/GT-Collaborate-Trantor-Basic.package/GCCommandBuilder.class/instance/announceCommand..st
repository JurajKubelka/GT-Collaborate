as yet unclassified
announceCommand: aDictionary 
	| announcement |
	announcement := GCAnnouncement instantiateActionName: (aDictionary at: #action).
	self flag: #toBeRemoved.