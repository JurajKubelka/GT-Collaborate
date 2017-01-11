printing
printOn: aStream
	super printOn: aStream.
	self isActive 
		ifTrue: [ aStream nextPutAll: '(active)' ]
		ifFalse: [ aStream nextPutAll: '(inactive)'].
	aStream space; nextPut: $[.
	collection 
		ifNil: [ aStream nextPutAll: 'nil' ]
		ifNotNil: [ 
			aStream 
				print: collection size;
				space;
				nextPutAll: ' commad(s)' ].
	aStream nextPut: $] 