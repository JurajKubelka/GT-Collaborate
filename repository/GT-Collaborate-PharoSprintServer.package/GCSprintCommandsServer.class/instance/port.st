accessing
port
	^ node port isZero 
		ifTrue: [ node start; port ]
		ifFalse: [ node port ]