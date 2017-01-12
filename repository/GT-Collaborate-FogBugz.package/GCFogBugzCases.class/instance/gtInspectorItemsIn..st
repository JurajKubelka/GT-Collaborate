gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ collection 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Cases';
				updateOn: GCFogBugzCaseAdded from: [ self announcer ];
				updateOn: GCFogBugzCaseUpdated from: [ self announcer ];
				updateOn: GCFogBugzCasesUpdated from: [ self announcer ];
				yourself ]
		ifNil: [ composite ]