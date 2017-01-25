gt-inspector-extension
gtInspectorUIIn: composite
	<gtInspectorPresentationOrder: 0>
	^ composite
		with: [ :aComposite |
			(GCSprintUI new buildUIFor: aComposite tabulator sprint: self)
				title: 'UI' ]