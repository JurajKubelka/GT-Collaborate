initialization
initialize
	super initialize.
	trantorNode := TrantorNode new.
	commands := trantorNode add: self class sharedObject id: self class sharedObjectId.
	commands trantorAnnouncer 
		when: TrantorObjectChanged send: #announceCaseStatesChanged: to: self.