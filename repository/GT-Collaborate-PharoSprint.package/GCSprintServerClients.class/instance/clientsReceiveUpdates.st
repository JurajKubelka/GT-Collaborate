syncing
clientsReceiveUpdates
	clients do: [ :eachClient | | aNode |
		aNode := eachClient commands node.
		aNode acceptUpdatesFrom: aNode connections anyOne ].
	