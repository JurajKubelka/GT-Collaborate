gt-inspector-extension
gtInspectorMessagesIn: composite
	<gtInspectorPresentationOrder: 1>
	^ remoteObject 
		ifNotNil: [ :object |
			object gtInspectorMessagesIn: composite ]
		ifNil: [ composite ]
		