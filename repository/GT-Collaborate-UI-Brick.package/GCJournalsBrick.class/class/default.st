accessing
default
	<gtExample>
	<label: 'Default Journal.'>
	^ self new
			journalHolder: GCJournalsHolder default;
			yourself