printing
printOn: aStream
	case ifNotNil: [ :aCase |
		aStream 
			nextPutAll: 'Topic';
			nextPut: $(;
			print: aCase;
			nextPut: $) ]