gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ cases 
		ifNotNil: [ :aCases |
			(aCases gtInspectorItemsIn: composite)
				title: 'Cases';
				yourself ]
		ifNil: [ composite ]