gt-inspector-extension
gtInspectorConnectionsIn: composite
	<gtInspectorPresentationOrder: 3>
	^ commands ifNotNil: [ :aCommands |
		(aCommands gtInspectorConnectionsIn: composite)
			title: 'Connections' ]