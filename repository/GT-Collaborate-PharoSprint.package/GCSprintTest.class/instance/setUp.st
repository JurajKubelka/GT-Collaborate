initialization
setUp
	super setUp.
	sprint := GCSprint new.
	sprint
		developer: GCSprintUser alice;
		fogbugz: FogBugzClient threeCases;
		commands: GCSprintCommands new.
	