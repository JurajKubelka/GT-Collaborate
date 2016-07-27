examples
loremIpsum
	<gtExample>
	| journal |
	journal := GCJournalHolder loremIpsum.
	^ self new
		journalHolder: journal;
		topic: journal topics second;
		yourself