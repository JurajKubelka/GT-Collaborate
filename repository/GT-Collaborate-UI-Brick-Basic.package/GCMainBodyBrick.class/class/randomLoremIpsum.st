examples
randomLoremIpsum
	<gtExample>
	<label: 'Journal brick with random number of topics.'>
	^ self new
			journalHolder: GCJournalHolder randomLoremIpsum;
			yourself