enumerating
collect: aBlock 
	^ mutex critical: [ collection collect: aBlock ]