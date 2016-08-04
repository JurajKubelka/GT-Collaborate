examples
allFilter
	<gtExample>
	| journals book cases |
	journals := GCJournals new.
	cases := GCFogBugzCases new.
	cases addCase: (GCFBExamples default case18763).
	book := GCFogBugzBook new.
	book cases: cases.
	journals book: book.
	^ self new
		journalsHolder: (GCJournalsHolder new journals: journals; yourself);
		book: book;
		filter: GCFBAllPharoSprintFilter new;
		title: 'All Topics';
		yourself