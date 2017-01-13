*GT-Collaborate-PharoSprint
testInitializeProposedStateAnnouncement
	| results |
	results := OrderedCollection new.
	case := GCFogBugzCase case18846.
	case when: GCSprintCaseStateChanged do: [ :ann | results addLast: ann ].
	case propose: developer.
	self assert: results isEmpty