announcement handling
subscribe
	(fogbugz isNil or: [ commands isNil ]) ifTrue: [ ^ self ].
	(self fogbugz announcer
		when: GCSprintLocalCaseStateChanged send: #localStateChanged: to: self)
			subscriber: self.
	(self commands announcer
		when: GCSprintRemoteCommandsReceived send: #remoteStateChanged: to: self)
			subscriber: self.
	self updateCaseStates.