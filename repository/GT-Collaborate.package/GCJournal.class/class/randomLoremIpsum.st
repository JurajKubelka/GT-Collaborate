examples
randomLoremIpsum
	<gtExample>
	<label: 'Journal with random number of lorem ipsum topics.'>
	| newInstance |
	newInstance := self new
			authentication: GCUser alice;
			yourself.
	1 to: 100 atRandom + 50 do: [ :index |
		newInstance addTopic: (GCTopic loremIpsum: index printString, '.') ].
	^ newInstance