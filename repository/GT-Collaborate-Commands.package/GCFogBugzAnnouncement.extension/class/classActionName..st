*GT-Collaborate-Commands
classActionName: aString
	^ self allSubclasses
		detect: [ :each | each actionName = aString ]
		ifNone: [ GCUnknownAnnouncement ]