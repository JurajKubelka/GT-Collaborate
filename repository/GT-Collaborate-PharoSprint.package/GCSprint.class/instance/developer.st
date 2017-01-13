accessing
developer
	^ developer ifNil: [ developer := GCSprintUser default ]