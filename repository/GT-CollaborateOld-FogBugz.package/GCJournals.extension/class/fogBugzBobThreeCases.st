*GT-CollaborateOld-FogBugz
fogBugzBobThreeCases
	<gtExample>
	<label: 'FogBugz book separated from singleton objects.'>
	^ self new
			developer: GCDeveloper bob;
			book: GCFogBugzBook threeCases;
			yourself.