printing
printOn: aStream
	aStream
		nextPutAll: 'State Changed to #';
		print: self caseId;
		nextPut: $/;
		nextPutAll: self stateId;
		nextPutAll: ' by ';
		nextPutAll: self developerId.