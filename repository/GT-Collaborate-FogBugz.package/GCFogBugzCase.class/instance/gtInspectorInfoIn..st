gt-inspector-extension
gtInspectorInfoIn: composite
	<gtInspectorPresentationOrder: 1>
	^ info
		ifNotNil: [ :aCase |
			(aCase gtInspectorItemsIn: composite)
				title: 'Info' ]
		ifNil: [ composite ] 