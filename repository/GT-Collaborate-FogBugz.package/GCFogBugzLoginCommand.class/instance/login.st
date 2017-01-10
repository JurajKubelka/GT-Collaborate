login
login
	self isLoggedIn
		ifFalse: [
			[ 	self loginWithToken or: [ self loginWithUser ].
				self announceResult.
			] 	on: NetworkError, PrimitiveFailed, NameLookupFailure 
				do: [ :ex | self announceNetworkError: ex ] ]
		ifTrue: [ self announceAlreadyLogged ]