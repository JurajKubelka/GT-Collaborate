gt-inspector-extension
gtInspectorActivitiesIn: composite
	<gtInspectorPresentationOrder: 3>
	| browser |
	browser := composite tabulator
			title: 'Activities';
			row: #row;
			yourself.
	browser transmit to: #row; andShow: [ :a |
		a actionList
			beVertical;
			act: [ :list :entity | entity update ] entitled: 'Update FogBugz cases';
			act: [ :list :entity | entity removeAll ] entitled: 'Remove All Cases'
	].
	^ browser