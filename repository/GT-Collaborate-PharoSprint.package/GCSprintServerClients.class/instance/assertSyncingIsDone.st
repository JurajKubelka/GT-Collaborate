asserting
assertSyncingIsDone
	server node connections do: [ :eachConnection |
		[ eachConnection isDataAvailable not ] assert ].
	clients do: [ :eachClient |
		[ eachClient commands node connections anyOne isDataAvailable not ] assert ].
