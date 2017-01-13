printing
printOn: aStream
	super printOn: aStream.
	name ifNotNil: [ :aString | 
		aStream 
			nextPut: $(;
			nextPutAll: aString asString;
			nextPut: $) ].