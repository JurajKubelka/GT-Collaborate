private
connectTrantorNode: aTrantorNode
	| listener clientSocket serverSocket clientConnection serverConnection |
	listener := Socket newTCP.
	[ 
		listener listenOn: 0 backlogSize: 4.
		clientSocket := Socket newTCP.
		clientSocket connectTo: #[127 0 0 1] port: listener localPort waitForConnectionFor: 1.
		clientSocket waitForConnectionFor: 1.
		serverSocket := listener waitForAcceptFor: 1. 
	] ensure: [ listener destroy ].

	clientConnection := TrantorPeerClientIpConnection new 
		connection: ((SocketStream on: clientSocket) binary timeout: 1);
		ip: clientSocket localAddress;
		port: clientSocket localPort;
		yourself.
		
	serverConnection := TrantorPeerServerConnection new 
		connection: ((SocketStream on: serverSocket) binary timeout: 1);
		yourself.
		
	aTrantorNode addConnection: clientConnection.
	server node addConnection: serverConnection.
	aTrantorNode sendPeerRequestOn: clientConnection.
	server node peerOn: serverConnection.
	aTrantorNode acceptPeerRequestFrom: clientConnection.
	