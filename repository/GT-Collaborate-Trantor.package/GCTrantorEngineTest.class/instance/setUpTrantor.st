running
setUpTrantor
	trantorServer := TrantorNode new.
	trantorServer blockingStartOnPort: 0.
	trantorServer add: TrantorAWOROrderedCollection new.
	trantor := GCTrantorNode new.
	objectAddedSemaphore := Semaphore new.
	objectChangedSemaphore := Semaphore new.
	(trantor node announcer when: TrantorObjectAdded do: [ :ann |
		ann object trantorAnnouncer 
			when: TrantorObjectChanged do: [ objectChangedSemaphore signal ].
		objectAddedSemaphore signal ]) 
		subscriber: self.
	trantor blockingConnectTo: NetNameResolver localHostAddress port: trantorServer port.