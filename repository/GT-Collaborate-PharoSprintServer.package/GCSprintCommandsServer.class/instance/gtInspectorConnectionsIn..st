gt-inspector-extension
gtInspectorConnectionsIn: composite
	<gtInspectorPresentationOrder: 2>
	^ node ifNotNil: [ :aTrantorNode |
		(aTrantorNode gtInspectorConnectionsIn: composite)
			title: 'Server Connections' ]