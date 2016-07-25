adding
addDeveloperStatus: aDeveloperStatus
	(self developers includes: aDeveloperStatus) ifTrue: [ ^ self ].
	self developers addLast: aDeveloperStatus.
	self announce: (GCDeveloperAssigned new developerStatus: aDeveloperStatus; topic: self).
	^ aDeveloperStatus