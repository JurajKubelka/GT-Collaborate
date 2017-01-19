gt-inspector-extension
gtInspectorCasesIn: composite
	<gtInspectorPresentationOrder: 0>
	^ cases 
		ifNotNil: [ :aCases |
			(aCases gtInspectorCasesIn: composite)
				title: 'Cases';
				yourself ]
		ifNil: [ composite ]