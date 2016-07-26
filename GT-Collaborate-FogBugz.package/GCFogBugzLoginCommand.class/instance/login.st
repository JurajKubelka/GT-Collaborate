login
login
	^ tracker isLoggedIn 
			ifFalse: [ | result |
				result := self loginWithToken or: [ self loginWithUser ].
				self announceResult.
				result ]
			ifTrue: [
				self announceAlreadyLogged.
				true ]