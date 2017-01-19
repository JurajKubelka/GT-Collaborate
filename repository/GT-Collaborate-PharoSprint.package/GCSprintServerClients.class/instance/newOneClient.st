instance creation
newOneClient
	^ self newClientNamed: 'Client #', (clients size + 1) asString.