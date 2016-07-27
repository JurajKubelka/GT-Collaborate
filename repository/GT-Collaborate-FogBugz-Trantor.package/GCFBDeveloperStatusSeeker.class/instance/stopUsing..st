deactivation
stopUsing: aJournals
	self trantorEngine ifNotNil: [ :oldTrantor | oldTrantor unsubscribe: self ].
	self journals ifNotNil: [ :oldJournals | oldJournals unsubscribe: self ].
	journals := nil.
	trantorEngine := nil.	