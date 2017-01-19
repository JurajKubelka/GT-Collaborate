gt-inspector-extension
gtInspectorCasesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ fogbugz 
		ifNotNil: [ :aFogBugz |
			(aFogBugz gtInspectorCasesIn: composite)
				title: 'Cases';
				yourself ]
		ifNil: [ composite ]