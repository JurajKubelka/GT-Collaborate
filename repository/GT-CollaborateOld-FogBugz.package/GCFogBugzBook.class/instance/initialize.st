initialization
initialize
	super initialize.
	self cases: GCFogBugzCases new.
	self monitor: GCFogBugz new.