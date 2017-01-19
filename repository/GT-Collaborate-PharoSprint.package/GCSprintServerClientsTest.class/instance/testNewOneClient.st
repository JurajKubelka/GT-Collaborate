tests
testNewOneClient
	| connections |
	nodes newOneClient.
	connections := nodes allServerConnections asOrderedCollection.
	self assert: connections size equals: 1.
	self assert: connections first isConnected.
	self deny: connections first isDataAvailable.