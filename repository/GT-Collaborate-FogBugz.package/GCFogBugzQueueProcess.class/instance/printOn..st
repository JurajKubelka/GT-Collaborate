as yet unclassified
printOn: aStream
	super printOn: aStream.
	self isActive
		ifTrue: [ aStream nextPutAll: '(active)' ]
		ifFalse: [ aStream nextPutAll: '(inactive)']