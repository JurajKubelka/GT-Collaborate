removing
removeDeveloperStatus: aGCDeveloperStatus 
	| removed |
	removed := self developers remove: aGCDeveloperStatus ifAbsent: [ ^ nil ].
	self announce: (GCDeveloperUnassigned new topic: self; developerStatus: removed; yourself).
	^ removed