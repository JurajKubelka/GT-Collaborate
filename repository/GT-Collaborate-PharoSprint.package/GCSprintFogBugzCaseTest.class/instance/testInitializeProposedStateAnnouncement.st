*GT-Collaborate-PharoSprint
testInitializeProposedStateAnnouncement
	| results |
	results := OrderedCollection new.
	case := FogBugzAnnounceableCase case18846.
	case announcer when: GCSprintLocalCaseStateChanged do: [ :ann | results addLast: ann ].
	case propose: developer.
	self assert: results isEmpty