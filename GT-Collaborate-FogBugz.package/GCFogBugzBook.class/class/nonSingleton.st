examples
nonSingleton
	<gtExample>
	<label: 'Extra FogBugz Book that does not use singleton objects'>
	| cases |
	cases := GCFogBugzCases new.
	^ self cases: cases monitor: (GCFogBugzMonitor cases: cases)