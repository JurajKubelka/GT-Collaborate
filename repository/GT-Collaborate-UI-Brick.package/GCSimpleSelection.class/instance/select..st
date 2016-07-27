action
select: aBrick 
	selection ifNotNil: [ :aSelectedBrick | aSelectedBrick uncheck ].
	selection := aBrick.
	aBrick check.