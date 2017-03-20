*GT-Collaborate-PharoSprint
sprint
	^ self infoAt: #sprint ifAbsent: [ self error: 'should not happen' ]