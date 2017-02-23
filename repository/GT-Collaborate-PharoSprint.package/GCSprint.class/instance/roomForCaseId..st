accessing - room
roomForCaseId: anInteger
	^ self roomId: ('fogBugzCase-', anInteger asString)