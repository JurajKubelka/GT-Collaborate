printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self developer 
		ifNil: [ aStream nextPutAll: '<annonymous>' ]
		ifNotNil: [ :aDeveloper | aStream nextPutAll: aDeveloper name asString ].
	aStream nextPut: $).
