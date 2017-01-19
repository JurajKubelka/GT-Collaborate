gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 2>
	^ commands ifNotNil: [ :aCommands |
		(aCommands gtInspectorMessagesIn: composite)
			title: 'Commands' ]