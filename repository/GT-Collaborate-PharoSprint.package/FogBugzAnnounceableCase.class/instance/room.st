as yet unclassified
room
	^ self infoAt: #room ifAbsentPut: [ self sprint roomForCaseId: self id ]