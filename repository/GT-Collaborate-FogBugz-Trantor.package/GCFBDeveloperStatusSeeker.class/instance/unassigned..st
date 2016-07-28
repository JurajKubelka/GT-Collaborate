announcement handling
unassigned: aGCDeveloperUnassigned 
	| dictionary |
	dictionary := dictionaryBuilder dictionary: aGCDeveloperUnassigned.
	trantorEngine addCommand: dictionary