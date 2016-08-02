printing
printOn: aStream
	| tmpString |
	super printOn: aStream.
	tmpString := self text asString.
	aStream 
		nextPut: $(;
		nextPutAll: (tmpString first: (10 min: tmpString size));
		nextPut: $)
