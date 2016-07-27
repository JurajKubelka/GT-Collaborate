initialization
initialize
	super initialize.
	cases := GCFogBugzCases new.
	cases announcer: announcer.
	monitor := GCFogBugzMonitor new.
	monitor cases: cases; announcer: announcer.