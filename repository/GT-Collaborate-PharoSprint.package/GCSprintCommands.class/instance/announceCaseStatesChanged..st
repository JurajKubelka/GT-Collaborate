announcing
announceCaseStatesChanged: aTrantorObjectChanged
	self trace: 'object changed '.
	self traceCr: self identityHash.
	self announce: (GCSprintRemoteCommandsReceived new commands: commands asOrderedCollection; yourself)