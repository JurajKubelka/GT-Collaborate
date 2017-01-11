*GT-Collaborate-FogBugz
printOn: aStream
	super printOn: aStream.
	self isAuthenticated 
		ifTrue: [ aStream nextPutAll: '(authenticated)' ]
		ifFalse: [ aStream nextPutAll: '(unauthenticated)']