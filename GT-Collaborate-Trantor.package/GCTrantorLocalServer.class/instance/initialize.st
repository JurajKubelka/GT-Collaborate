initialization
initialize
	super initialize.
	node := TrantorNode new.
	node port: 0.
	object := TrantorAWOROrderedCollection new.
	trantorObject := node add: object.
	(trantorObject trantorAnnouncer 
		subscribe: TrantorObjectChanged send: #sync to: node) subscriber: self.