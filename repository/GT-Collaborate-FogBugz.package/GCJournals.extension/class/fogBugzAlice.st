*GT-Collaborate-FogBugz
fogBugzAlice
	<gtExample>
	<label: 'FogBugz book separated from singleton objects.'>
	^ self new
			developer: GCDeveloper alice;
			book: GCFogBugzBook emptyBook;
			yourself.