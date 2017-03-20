gt-inspector-extension
gtInspectorEventsIn: composite
	<gtInspectorPresentationOrder: -1>
	^ case 
		ifNotNil: [ :aCase |
			(aCase gtInspectorEventsIn: composite) ]
		ifNil: [ composite ]