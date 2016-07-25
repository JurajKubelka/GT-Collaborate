as yet unclassified
announceCommand: aDictionary 
	| announcement |
	announcement := GCAnnouncement fromActionId: (aDictionary at: #action).
	self flag: #toBeRemoved.