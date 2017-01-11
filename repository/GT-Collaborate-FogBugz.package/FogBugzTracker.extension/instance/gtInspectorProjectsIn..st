*GT-Collaborate-FogBugz
gtInspectorProjectsIn: composite
	<gtInspectorPresentationOrder: 0>
	^ projects 
		ifNotNil: [ :aCollection |
			(aCollection gtInspectorItemsIn: composite)
				title: 'Projects';
				yourself ]
		ifNil: [ composite ]