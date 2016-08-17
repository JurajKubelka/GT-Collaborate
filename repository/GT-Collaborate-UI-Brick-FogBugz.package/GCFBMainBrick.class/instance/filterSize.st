accessing
filterSize
	^ filter ifNotNil: [ :aFilter | aFilter size ] ifNil: 0