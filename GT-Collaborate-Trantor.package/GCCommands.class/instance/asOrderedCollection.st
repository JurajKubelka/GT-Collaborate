converting
asOrderedCollection
	| collection |
	collection := OrderedCollection new.
	commands flush: [ :eachCommand | collection add: eachCommand ].
	^ collection