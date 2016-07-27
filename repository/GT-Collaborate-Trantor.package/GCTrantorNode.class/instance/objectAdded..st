announcement handling
objectAdded: aTrantorObjectAdded 
	remoteObject := aTrantorObjectAdded object.
	remoteObject trantorAnnouncer
		subscribe: TrantorObjectChanged send: #objectChanged: to: self.
	engine pullChanges; pushLocalChanges.