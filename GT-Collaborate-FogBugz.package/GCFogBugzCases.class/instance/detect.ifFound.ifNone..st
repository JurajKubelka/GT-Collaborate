enumerating
detect: aBlock ifFound: foundBlock ifNone: exceptionBlock
	^ mutex critical: [ collection detect: aBlock ifFound: foundBlock ifNone: exceptionBlock ]