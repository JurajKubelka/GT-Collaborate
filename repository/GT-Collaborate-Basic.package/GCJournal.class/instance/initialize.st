initialization
initialize
	super initialize.
	authentication := GCUser new.
	topics := OrderedCollection new.
	engine := GCNullEngine default.