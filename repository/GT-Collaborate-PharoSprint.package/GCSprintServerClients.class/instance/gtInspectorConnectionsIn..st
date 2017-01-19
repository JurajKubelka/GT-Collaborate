gt-inspector-extension
gtInspectorConnectionsIn: composite
	<gtInspectorPresentationOrder: 1.5>
	^ server ifNotNil: [ :aServer |
		(aServer gtInspectorConnectionsIn: composite)
			title: 'Connections' ]