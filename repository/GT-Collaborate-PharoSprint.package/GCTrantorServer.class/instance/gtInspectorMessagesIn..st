gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ trantorObject ifNotNil: [ :aTrantorObject |
		aTrantorObject gtInspectorMessagesIn: composite ]