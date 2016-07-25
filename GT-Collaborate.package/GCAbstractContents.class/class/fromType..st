instance creation
fromType: aString 
	| aClass |
	aClass := self allSubclasses 
					detect: [ :each | each type = aString ] 
					ifNone: [ GCUnknownType ].
	^ aClass new