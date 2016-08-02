as yet unclassified
filterOldCommands: aDictionary 
	| key |
	key := (aDictionary at: #id) printString, '_', (aDictionary at: #action) printString.
	selectedCommands at: key put: aDictionary.