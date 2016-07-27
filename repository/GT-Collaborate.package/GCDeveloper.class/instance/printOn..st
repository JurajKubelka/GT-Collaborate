printing
printOn: aStream
	self author 
		ifNil: [ super printOn: aStream ] 
		ifNotNil: [ :anAuthor | aStream nextPutAll: anAuthor asString ]