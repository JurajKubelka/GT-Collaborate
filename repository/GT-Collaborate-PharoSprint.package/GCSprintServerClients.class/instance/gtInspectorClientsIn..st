gt-inspector-extension
gtInspectorClientsIn: composite
	<gtInspectorPresentationOrder: 5>
	^ clients ifNotNil: [ :aCollection |
		(aCollection gtInspectorItemsIn: composite)
			title: 'Clients' ]