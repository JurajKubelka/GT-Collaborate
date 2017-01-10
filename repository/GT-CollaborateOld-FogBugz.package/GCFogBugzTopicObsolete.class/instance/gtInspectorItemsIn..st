gt-inspector-extension
gtInspectorItemsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ case 
		ifNotNil: [ :aCase |
			(aCase gtInspectorItemsIn: composite) ]
		ifNil: [ composite ]