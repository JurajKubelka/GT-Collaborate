gt-inspector-extension
gtInspectorCasesIn: composite
	<gtInspectorPresentationOrder: 0>
	^ collection 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Cases';
				updateOn: GCFogBugzCasesUpdated from: [ self announcer ];
				yourself ]
		ifNil: [ composite ]