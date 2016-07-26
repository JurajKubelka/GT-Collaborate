execute
execute
	self trace; traceCr: #_begin.
	self isLoggedIn 
		ifTrue: [ [ self basicExecute ]
			on: NetworkError, PrimitiveFailed, NameLookupFailure
			do: [ :ex | self announceNetworkError: ex ] ]
		ifFalse: [ self announceNotLoggedIn ].
	self trace; traceCr: #_end.
