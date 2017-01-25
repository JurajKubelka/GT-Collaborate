initialize-release
stop
	self isConnected ifFalse: [ ^ self ].
	finish := true.
	client ifNotNil: [ :aClient | aClient close ].
	client := nil.