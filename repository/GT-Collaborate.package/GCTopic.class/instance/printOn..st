printing
printOn: aStream
	super printOn: aStream.
	aStream 
		nextPut: $(;
		print: (self title first: 10);
		nextPut: $)
