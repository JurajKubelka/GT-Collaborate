visitor
visitGCText: aGCText 
	^ aGCText text: (STON fromString: (dictionary at: #text))