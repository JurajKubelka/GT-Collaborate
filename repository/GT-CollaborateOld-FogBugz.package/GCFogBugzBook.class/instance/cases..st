accessing
cases: aCases
	"for testing purpose only"
	cases := aCases.
	aCases announcer: announcer.
	monitor ifNotNil: [ :aMonitor | aMonitor cases: aCases ].