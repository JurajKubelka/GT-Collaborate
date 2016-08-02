initialization
initialize
	super initialize.
	node := TrantorNode new.
	engine := GCNullEngine default.
	remoteObject := nil.
	node announcer subscribe: TrantorObjectAdded send: #objectAdded: to: self.
	node announcer subscribe: TrantorConnectionAdded send: #connectionAdded: to: self.