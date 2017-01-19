gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ server ifNotNil: [ :aGCSprintCommandsServer |
		(aGCSprintCommandsServer gtInspectorMessagesIn: composite)
			title: 'Messages' ]