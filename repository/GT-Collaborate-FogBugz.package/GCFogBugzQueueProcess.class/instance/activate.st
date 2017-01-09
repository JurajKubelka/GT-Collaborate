activation
activate
	"Initialize a process."
	^ mutex critical: [
			self isInactive ifTrue: [ self initializeProcess ].
			process ]