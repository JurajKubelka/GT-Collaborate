subscription
unsubscribeFromBooks: aCollectionOrNil
	aCollectionOrNil ifNotNil: [ :oldBooks | oldBooks do: [ :each | each unsubscribeJournals: self ] ].