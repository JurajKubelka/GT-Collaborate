private
connectTrantorNode: aTrantorNode
	| listener clientSocket serverSocket clientConnection serverConnection |
	listener := Socket newTCP.
	[ 
		listener listenOn: 0 backlogSize: 4.
		clientSocket := Socket newTCP.
		clientSocket connectTo: #[127 0 0 1] port: listener localPort waitForConnectionFor: self connectionTimeout.
		clientSocket waitForConnectionFor: self connectionTimeout.
		serverSocket := listener waitForAcceptFor: self connectionTimeout.
	] ensure: [ listener destroy ].

	clientConnection := TrantorPeerClientIpConnection new 
		connection: ((SocketStream on: clientSocket) binary; timeout: self socketStreamTimeout);
		ip: clientSocket localAddress;
		port: clientSocket localPort;
		yourself.
		
	serverConnection := TrantorPeerServerConnection new 
		connection: ((SocketStream on: serverSocket) binary; timeout: self socketStreamTimeout);
		yourself.
		
	aTrantorNode addConnection: clientConnection.
	server node addConnection: serverConnection.
	aTrantorNode sendPeerRequestOn: clientConnection.
	server node peerOn: serverConnection.
	aTrantorNode acceptPeerRequestFrom: clientConnection.
	