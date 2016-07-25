visitor
visitGCText: aGCText 
	^ Dictionary new 
			at: #type put: aGCText type;
			at: #text put: (STON toString: aGCText text);
			yourself