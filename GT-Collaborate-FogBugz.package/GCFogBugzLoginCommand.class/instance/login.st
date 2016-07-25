login
login
	^ tracker isLoggedIn 
			ifFalse: [ self loginWithToken or: [ self loginWithUser ] ]
			ifTrue: true