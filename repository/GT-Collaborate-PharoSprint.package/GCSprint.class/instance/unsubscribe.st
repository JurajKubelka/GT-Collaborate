announcement handling
unsubscribe
	(fogbugz isNil or: [ commands isNil ]) ifTrue: [ ^ self ].
	self fogbugz announcer unsubscribe: self.
	self commands announcer unsubscribe: self.