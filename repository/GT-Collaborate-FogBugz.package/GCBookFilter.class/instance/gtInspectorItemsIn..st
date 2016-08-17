gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ topics 
		ifNotNil: [ :aCases |
			(aCases gtInspectorItemsIn: composite)
				title: 'Filtered Cases';
				yourself ]
		ifNil: [ composite ]