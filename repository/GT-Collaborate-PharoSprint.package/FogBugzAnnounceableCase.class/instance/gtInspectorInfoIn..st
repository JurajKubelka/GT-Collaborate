gt-inspector-extension
gtInspectorInfoIn: composite
	<gtInspectorPresentationOrder: -2>
	^ case 
		ifNotNil: [ :aCase |
			(aCase gtInspectorInfoIn: composite) ]
		ifNil: [ composite ]