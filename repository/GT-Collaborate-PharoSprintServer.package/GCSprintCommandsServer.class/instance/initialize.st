initialization
initialize
	super initialize.
	node := TrantorNode new.
	node port: 0.
	trantorObject := node add: GCSprintCommandSettings sharedObject id: GCSprintCommandSettings sharedObjectId.
	(node announcer
		subscribe: TrantorConnectionAdded
		send: #syncOnAnnouncement: to: node) subscriber: self.

	(trantorObject trantorAnnouncer 
		subscribe: TrantorObjectChanged 
		send: #sync 
		to: node) subscriber: self.