printing
printOn: aStream
	super printOn: aStream.
	self developer ifNotNil: [ :aDeveloper |
		aStream 
			nextPut: $(;
			print: aDeveloper;
			nextPut: $) ]