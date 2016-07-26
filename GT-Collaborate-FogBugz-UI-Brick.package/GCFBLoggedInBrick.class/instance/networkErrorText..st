accessing
networkErrorText: aGCFBNetworkError 
	^ String streamContents: [ :aStream |
		aStream 
			nextPutAll: 'A network error: ';
			print: aGCFBNetworkError exception ]