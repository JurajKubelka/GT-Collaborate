gt-inspector-extension
gtInspectorCommandsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ collection 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Commands';
				yourself ]
		ifNil: [ composite ]