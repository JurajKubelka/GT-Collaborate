gt-inspector-extension
gtInspectorExtraIn: composite
	<gtInspectorPresentationOrder: 1>
	^ info
		ifNotNil: [ :aCase |
			(aCase gtInspectorItemsIn: composite)
				title: 'Extra' ]
		ifNil: [ composite ] 