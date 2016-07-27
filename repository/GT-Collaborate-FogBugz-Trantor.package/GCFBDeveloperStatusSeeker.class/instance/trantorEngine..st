accessing
trantorEngine: newGCTrantorEngine
	trantorEngine ifNotNil: [ :oldTrantorEngine | oldTrantorEngine unsubscribe: self ].
	trantorEngine := newGCTrantorEngine.
	newGCTrantorEngine 
		subscribe: TrantorObjectChanged send: #externalUpdate: to: self for: self;
		subscribe: TrantorObjectAdded send: #externalUpdate: to: self for: self.