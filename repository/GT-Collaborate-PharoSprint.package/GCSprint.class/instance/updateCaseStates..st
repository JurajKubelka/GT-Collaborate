actions
updateCaseStates: aCollectionOfGCSprintCommand
	"Update all case states according."
	GCSprintUpdateRemoteCommands new 
		fogbugz: self fogbugz;
		commands: aCollectionOfGCSprintCommand;
		execute.