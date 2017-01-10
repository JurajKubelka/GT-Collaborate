*GT-CollaborateOld-FogBugz
gtInspectorItemsIn: composite 
	<gtInspectorPresentationOrder: 0>
	^ events 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Events';
				yourself ]
		ifNil: [ composite ]