accessing
bookSize
	^ book ifNotNil: [ :aBook | self filter bookSize: aBook ] ifNil: 0