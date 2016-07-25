examples
loremIpsum
	<gtExample>
	<label: 'Journal with four lorem ipsum topics.'>
	^ self new
			authentication: GCUser alice;
			addTopic: (GCTopic loremIpsum: '1.');
			addTopic: (GCTopic loremIpsum: '2.');
			addTopic: (GCTopic loremIpsum: '3.');
			addTopic: (GCTopic loremIpsum: '4.');
			yourself