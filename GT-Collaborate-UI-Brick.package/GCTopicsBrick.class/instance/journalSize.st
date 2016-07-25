accessing
journalSize
	^ self journalHolder ifNil: [ 0 ] ifNotNil: [ :aJournal | aJournal size ]