examples
basic
	<gtExample>
	| journals |
	journals := GCJournals fogBugzBobThreeCases.
	^ self new
		journalsHolder: (GCJournalsHolder new journals: journals; yourself);
		book: journals book;
		yourself