removing
removeAll
	^ mutex critical: [ 
		collection do: [ :each | each unsubscribe: self ].
		collection removeAll ]