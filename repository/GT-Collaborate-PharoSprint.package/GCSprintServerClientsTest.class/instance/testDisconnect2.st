tests
testDisconnect2
	| connections |
	nodes newOneClient.
	connections := nodes allServerConnections asOrderedCollection.
	nodes disconnect.
	self deny: connections first isConnected.