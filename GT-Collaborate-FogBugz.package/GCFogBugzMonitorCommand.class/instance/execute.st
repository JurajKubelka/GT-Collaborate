execute
execute
	self trace; traceCr: #beggin.
	self isLoggedIn 
		ifTrue: [ self basicExecute ]
		ifFalse: [ self announceNotLoggedIn ].	
	self trace; traceCr: #end.
