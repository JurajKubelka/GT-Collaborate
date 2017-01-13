announcement handling
subscribe
	(fogbugz isNil or: [ commands isNil ]) ifTrue: [ ^ self ].
	self fogbugz announcer
		when: GCSprintLocalCaseStateChanged send: #localStateChanged: to: self.
	self commands announcer
		when: GCSprintRemoteCommandsReceived send: #remoteStateChangeds: to: self.