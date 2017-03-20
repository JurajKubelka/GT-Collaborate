*GT-Collaborate-PharoSprint
testInitializeTakenStateAnnouncement
	| results |
	results := OrderedCollection new.
	case := GCFogBugzCase case18846.
	case announcer when: GCSprintLocalCaseStateChanged do: [ :ann | results addLast: ann ].
	case take: developer.
	self assert: results size equals: 1.
	self assert: results first state class equals: GCSprintTakenCaseState.
	self assert: results first developer equals: developer.