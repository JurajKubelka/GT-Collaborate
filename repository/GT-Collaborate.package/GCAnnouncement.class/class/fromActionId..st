instance creation
fromActionId: aString 
	| aClass |
	aClass := self allSubclasses detect: [ :each | each actionName = aString ] ifNone: [ GCUnknownAnnouncement ].
	^ aClass new