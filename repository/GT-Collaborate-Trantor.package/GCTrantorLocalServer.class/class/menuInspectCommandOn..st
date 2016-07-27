world menu
menuInspectCommandOn: aBuilder
	"Add a custom menu item to the world menu"
	<worldMenu>
	(aBuilder item: #'Inspect Trantor Server')
		order: 20.5;
		icon: (Smalltalk ui icons iconNamed: #glamorousInspect);
		parent: #Collaboration;
		action: [ self inspectInstance ]