login
ensureLogged
	tracker isLoggedIn 
			ifFalse: [ self login ]