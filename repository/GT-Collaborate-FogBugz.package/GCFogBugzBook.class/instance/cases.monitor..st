initialization
cases: aCases monitor: aMonitor
	"for testing purpose only"
	cases := aCases.
	monitor := aMonitor.
	cases announcer: announcer.
	monitor cases: cases; announcer: announcer.