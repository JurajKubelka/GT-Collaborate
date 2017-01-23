initialization
initialize
	super initialize.
	trantorNode := TrantorNode new.
	commands := trantorNode add: GCSprintCommandSettings sharedObject id: GCSprintCommandSettings sharedObjectId.
	commands trantorAnnouncer 
		when: TrantorObjectChanged send: #announceCaseStatesChanged: to: self.