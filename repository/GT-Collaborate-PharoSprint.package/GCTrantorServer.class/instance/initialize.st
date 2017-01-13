initialization
initialize
	super initialize.
	node := TrantorNode new.
	node port: 0.
	trantorObject := node add: GCSprintCommands sharedObject id: GCSprintCommands sharedObjectId.
	(node announcer
		subscribe: TrantorObjectAdded, TrantorConnectionAdded
		send: #sync to: node) subscriber: self.
	(trantorObject trantorAnnouncer 
		subscribe: TrantorObjectChanged 
		send: #sync 
		to: node) subscriber: self.