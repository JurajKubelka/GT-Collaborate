examples
randomLoremIpsum
	<gtExample>
	| journal |
	journal := GCJournalHolder randomLoremIpsum.
	^ self new
		journalHolder: journal;
		topic: journal topics atRandom;
		yourself