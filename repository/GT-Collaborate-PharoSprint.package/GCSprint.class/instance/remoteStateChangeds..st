announcement handling
remoteStateChangeds: aGCSprintRemoteCaseStatesChanged 
	self developer trace.
	self traceCr: ' received remote commands.'.
	GCSprintUpdateRemoteCommands new 
		fogbugz: self fogbugz;
		commands: aGCSprintRemoteCaseStatesChanged commands;
		execute.