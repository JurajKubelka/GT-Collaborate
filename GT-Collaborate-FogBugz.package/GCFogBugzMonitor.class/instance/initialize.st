initialization
initialize
	super initialize.
	cases := GCFogBugzCases default.
	tracker := FogBugzTracker pharo.
	queue := GCFogBugzCommandsQueue new.