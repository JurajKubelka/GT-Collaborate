*GT-Collaborate-PharoSprint
room
	^ self infoAt: #room ifAbsentPut: [ self sprint roomForCaseId: self id ]