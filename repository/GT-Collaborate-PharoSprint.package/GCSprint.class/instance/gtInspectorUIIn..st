gt-inspector-extension
gtInspectorUIIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite
		custom: (GCSprintPresentation new
				title: [ 'UI' ];
				yourself);
		act: [ :chat | chat open ] 
			iconName: #glamorousOpen 
			entitled: 'Open in Separate Window';
		yourself