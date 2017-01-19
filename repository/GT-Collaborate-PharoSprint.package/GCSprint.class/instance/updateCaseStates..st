actions
updateCaseStates: aCollectionOfGCSprintCommand
	"Update all case states according."
	self traceCr: self developer name, ' updateCaseStates: ', aCollectionOfGCSprintCommand size printString.
	GCSprintUpdateRemoteCommands new 
		fogbugz: self fogbugz;
		commands: aCollectionOfGCSprintCommand;
		execute.