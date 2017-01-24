private
send: request response: response
	MQTTExperimentalClient new
		host: 'iot.eclipse.org';
		port: 1883;
		clientId: 'Sender';
		open;
		sendMessage: request contents asByteArray toTopic: '/pharo/fogbugz/cases';
		close.
	^ response statusLine: ZnStatusLine ok; entity: (ZnEntity text: 'OK'); yourself