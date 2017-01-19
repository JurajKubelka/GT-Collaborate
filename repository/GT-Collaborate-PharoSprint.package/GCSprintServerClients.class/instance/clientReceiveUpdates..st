syncing
clientReceiveUpdates: aClient
	| aNode |
	aNode := aClient commands node.
	aNode acceptUpdatesFrom: aNode connections anyOne.
	