accessing
start
	self isConnected ifTrue: [ ^ self ].
	self stop.
	finish := false.
	
	client := MQTTExperimentalClient new
		host: 'iot.eclipse.org';
		port: 1883;
		clientId: self processName;
		open;
		subscribeToTopic: self topicName;
		yourself.

	[ 
		client
			runWith: [ :message |
				self messageReceived: message.
				self shouldFinish ifTrue: [ ConnectionClosed signal ] ]	
	] forkAt: Processor userBackgroundPriority named: self processName
