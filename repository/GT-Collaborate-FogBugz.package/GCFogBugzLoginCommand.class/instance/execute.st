execute
execute
	self isLoggedIn 
		ifFalse: [ self login ]
		ifTrue: [ self announceAlreadyLogged ]