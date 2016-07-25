printing
printOn: aStream
	aStream
		nextPutAll: self statusName;
		nextPutAll: ': ';
		print: self developer