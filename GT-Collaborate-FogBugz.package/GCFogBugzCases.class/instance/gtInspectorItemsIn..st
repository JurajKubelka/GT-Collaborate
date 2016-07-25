gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ collection 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Cases';
				yourself ]
		ifNil: [ composite ]