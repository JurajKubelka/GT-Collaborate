printing
printOn: aStream
	super printOn: aStream.
	self topicNumber ifNotNil: [ :aTopicNumber | 
		self status ifNotNil: [ :aStatus |
			aStream
				nextPut: $(;
				print: aTopicNumber;
				nextPutAll: ', ';
				print: aStatus;
				nextPut: $) ] ]