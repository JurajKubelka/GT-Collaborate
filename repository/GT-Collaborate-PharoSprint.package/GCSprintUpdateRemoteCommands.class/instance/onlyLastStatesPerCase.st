as yet unclassified
onlyLastStatesPerCase
	| dictionary |
	dictionary := Dictionary new.
	commands do: [ :each | dictionary at: each caseId put: each ].
	^ dictionary