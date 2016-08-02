accessing
journalsHolder: aGCJournalsHolder 
	journalsHolder ifNotNil: [ :oldJournalsHolder | aGCJournalsHolder unsubscribe: self ].
	journalsHolder := aGCJournalsHolder.