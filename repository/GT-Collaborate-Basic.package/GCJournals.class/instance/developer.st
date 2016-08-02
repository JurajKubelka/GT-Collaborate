accessing
developer
	^ developer ifNil: [ developer := GCDeveloper default ]