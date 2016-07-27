accessing
bookSize
	^ book ifNotNil: [ :aBook | aBook size ] ifNil: 0