instance creation
status: aString 
	| aClass |
	aClass := self allSubclasses 
		detect: [ :each | each statusName = aString ] 
		ifNone: [ #GCBInterested ].
	^ aClass new