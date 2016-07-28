announcement handling
objectAdded: aTrantorObjectAdded 
	remoteObject := aTrantorObjectAdded object.
	remoteObject trantorAnnouncer
		subscribe: TrantorObjectChanged send: #objectChanged: to: self.
	self announce: aTrantorObjectAdded.
	engine pullChanges; pushLocalChanges.