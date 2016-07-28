announcement handling
assigned: aGCDeveloperAssigned 
	| dictionary |
	dictionary := dictionaryBuilder dictionary: aGCDeveloperAssigned.
	trantorEngine addCommand: dictionary