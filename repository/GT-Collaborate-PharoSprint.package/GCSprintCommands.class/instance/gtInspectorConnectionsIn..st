gt-inspector-extension
gtInspectorConnectionsIn: composite
	<gtInspectorPresentationOrder: 2>
	^ trantorNode ifNotNil: [ :aTrantorNode |
		(aTrantorNode gtInspectorConnectionsIn: composite)
			title: 'Connections' ]