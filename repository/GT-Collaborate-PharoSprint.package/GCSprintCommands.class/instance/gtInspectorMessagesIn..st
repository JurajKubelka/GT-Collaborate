gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ commands ifNotNil: [ :aTrantorObject |
		aTrantorObject gtInspectorMessagesIn: composite ]