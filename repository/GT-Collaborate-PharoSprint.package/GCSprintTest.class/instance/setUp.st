initialization
setUp
	super setUp.
	sprint := GCSprint new.
	sprint
		developer: GCSprintUser alice;
		fogbugz: GCFogBugz threeCases;
		commands: GCSprintCommands new.
	