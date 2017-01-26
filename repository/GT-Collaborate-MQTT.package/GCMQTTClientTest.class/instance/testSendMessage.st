running
testSendMessage
	self assert: (client1 sendMessage: self message).
	self assert: client2 readMessage equals: self message. 