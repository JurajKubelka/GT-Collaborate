gt-inspector-extension
gtInspectorBookCasesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ book 
		ifNotNil: [ :aBook |
			(aBook gtInspectorItemsIn: composite)
				title: 'Book Cases';
				yourself ]
		ifNil: [ composite ]