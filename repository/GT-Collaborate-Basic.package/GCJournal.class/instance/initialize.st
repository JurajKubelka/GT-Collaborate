initialization
initialize
	super initialize.
	authentication := GCSprintUser new.
	topics := OrderedCollection new.
	engine := GCNullEngine default.