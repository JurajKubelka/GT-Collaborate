printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self isLoggedIn 
		ifTrue: [ aStream nextPutAll: 'authenticated' ]
		ifFalse: [ aStream nextPutAll: 'unauthenticated'].
	aStream nextPutAll: ', '.
	self isActive 
		ifTrue: [ aStream nextPutAll: 'active' ]
		ifFalse: [ aStream nextPutAll: 'inactive'].
	aStream nextPut: $)
