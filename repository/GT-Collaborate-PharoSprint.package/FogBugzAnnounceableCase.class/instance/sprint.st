as yet unclassified
sprint
	^ self infoAt: #sprint ifAbsent: [ self error: 'should not happen' ]