running
tearDown
	client1 ifNotNil: #close.
	client2 ifNotNil: #close.
	super tearDown.
