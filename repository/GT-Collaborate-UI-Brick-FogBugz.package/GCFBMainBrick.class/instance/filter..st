accessing
filter: newFilter
	filter ifNotNil: [ :oldFilter | oldFilter unsubscribe: self ].
	filter := newFilter.
	self subscribeToFilter: newFilter.