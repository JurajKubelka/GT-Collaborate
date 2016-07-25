login
login
	^ tracker isLoggedIn 
			ifFalse: [ queue addCommand: (GCFogBugzLoginCommand new
							tracker: tracker;
							yourself) ]