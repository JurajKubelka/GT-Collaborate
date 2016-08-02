examples
basic
	<gtExample>
	| journals book |
	journals := GCJournals new.
	book := GCFogBugzBook new.
	journals book: book.
	^ self new
		journalsHolder: (GCJournalsHolder new journals: journals; yourself);
		book: GCFogBugzBook new;
		yourself