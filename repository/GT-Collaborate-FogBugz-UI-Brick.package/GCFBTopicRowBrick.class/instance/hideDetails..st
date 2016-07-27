update
hideDetails: anEvent.
	detailWindow ifNotNil: [ :aWindow |	
		(aWindow boundsInWorld containsPoint: anEvent position) ifFalse: [ aWindow delete ] ].