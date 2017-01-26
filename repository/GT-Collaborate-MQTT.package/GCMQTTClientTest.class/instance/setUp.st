running
setUp
	super setUp.
	channelId := UUID new asString.
	client1 := GCMQTTClient new.
	client2 := GCMQTTClient new.
	client1 host: self host.
	client1 channelId: channelId.
	client1 open.
	client2 host: self host.
	client2 channelId: channelId.
	client2 open.