*GT-Collaborate-PharoSprint
ensureLogged
	tracker isLoggedIn 
			ifFalse: [ self login ]