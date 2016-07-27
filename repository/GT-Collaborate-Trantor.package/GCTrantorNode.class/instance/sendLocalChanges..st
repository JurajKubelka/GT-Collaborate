sending
sendLocalChanges: localChanges
	"Returns true, if I send local changes."
	remoteObject ifNil: [ ^ false ].
	localChanges ifEmpty: [ ^ false ].
	localChanges do: [ :each | 
		remoteObject addLast: each.
	].
	^ true