gt-inspector-extension
gtInspectorRemoteObject: composite
	<gtInspectorPresentationOrder: 0>
	^ remoteObject 
		ifNotNil: [ :object |
			object gtInspectorItemsIn: composite ]
		ifNil: [ composite ]
		